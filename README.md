# [syslog](https://github.com/kaven-universe/syslog)

A lightweight server for receiving UDP syslog messages and optionally forwarding them to other destinations.

## Docker

[kavenzero/syslog](https://hub.docker.com/r/kavenzero/syslog/tags)

```sh
# pull the image
docker pull kavenzero/syslog

# run the container and expose UDP port 514
# map host directories for configuration and logs
docker run -d --name syslog-server \
  -p 514:514/udp \
  -v "$(pwd)/config:/App/Configuration" \
  -v "$(pwd)/logs:/App/Log" \
  kavenzero/syslog

# verify the container is running
docker ps --filter "name=syslog-server"
```

## Configuration

> If `Syslog.kcf` is missing, the server will generate a default configuration file at startup.

`/App/Configuration/Syslog.kcf`

```json
{
  "Name": "",
  "Address": "0.0.0.0",
  "Port": 514,
  "EnableLoggingToConsole": true,
  "EnableLoggingToFile": true,
  "LogDirectory": "../syslogs",
  "ForwardingList": [
    {
      "Enable": false,
      "TargetAddress": "127.0.0.1",
      "TargetPort": 514
    }
  ]
}
```
