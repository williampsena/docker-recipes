const express = require("express")
const fs = require("fs")
const morgan = require("morgan")
const rfs = require("rotating-file-stream")
const path = require("path")
const app = express()
const port = 3000

const logsPath = path.join(__dirname, "shared/logs")

const rfsStream = rfs.createStream(path.join(logsPath, "log.log"), {
  size: "10M",
  interval: "1d",
})

app.use(morgan("combined", { stream: rfsStream }))
app.use(morgan("combined"))

app.get("/", (_req, res) => {
  res.send("Hello World!")
})

app.listen(port, () => {
  console.log(`App listening on port ${port}`)
})
