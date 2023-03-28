var hits = 0;
var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();
var hostName = System.Net.Dns.GetHostName();

app.MapGet("/", () =>
{
    hits++;
    return $"You have hit this server ({hostName}) {hits} time(s).";
});

app.Run();
