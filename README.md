# syslog

A lightweight server for receiving UDP syslog messages and optionally forwarding them to other destinations.

## Docker

[kavenzero/syslog](https://hub.docker.com/r/kavenzero/syslog/tags)

## Configuration

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
  ],
  "ExecutingAssemblyVersion": "2.6.7.0",
  "TypeAssemblyQualifiedName": "Kaven.Standard.SyslogServerConfig, Kaven.Standard, Version=2.6.7.0, Culture=neutral, PublicKeyToken=null",
  "CreatedAt": "2026-01-01T23:09:15.3882316Z",
  "LastModifiedAt": "2026-01-02T00:24:51.3782583Z"
}
```
