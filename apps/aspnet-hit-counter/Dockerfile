FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /source

COPY aspnet-hit-counter.csproj ./aspnetapp/
RUN (cd ./aspnetapp && dotnet restore)

COPY . ./aspnetapp/
WORKDIR /source/aspnetapp
RUN dotnet publish -c release -o /app --no-restore

FROM mcr.microsoft.com/dotnet/aspnet:7.0 as app
WORKDIR /app
COPY --from=build /app ./
ENTRYPOINT ["dotnet", "aspnet-hit-counter.dll"]