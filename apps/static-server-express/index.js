const express = require("express")
const path = require("path")
const app = express()
const serveIndex = require("serve-index")
const port = 3001

const logsPath = path.join(__dirname, "shared/logs")
app.use("/", express.static(logsPath), serveIndex(logsPath, { icons: true }))

app.listen(port, () => {
  console.log(`App listening on port ${port}`)
})
