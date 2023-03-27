var hits = 0;
var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () =>
{
    hits++;
    return $"You have hit this server {hits} time(s).";
});

app.Run();
