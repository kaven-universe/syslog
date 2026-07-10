FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build-env
WORKDIR /App

# Copy everything
COPY . ./

# Build and publish a release
RUN dotnet publish Syslog/Syslog.csproj -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:10.0
WORKDIR /App
COPY --from=build-env /App/out .

# Labels for metadata
LABEL name="syslog" \
    author="Kaven" \
    email="kaven@wuwenkai.com" \
    description="Lightweight UDP syslog server with console/file logging and optional forwarding support."

# Expose the required ports
EXPOSE 514/udp

ENTRYPOINT ["dotnet", "Syslog.dll"]