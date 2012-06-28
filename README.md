# Description
Installs the Minecraft server.

# Requirements
- Java

# Usage
This cookbook will download and install the latest minecraft server into
`/var/minecraft/`. It will also create a user named `minecraft` and configure
the server for you.

## Databags
Create the minecraft databag with know:

```
knife data bag create minecraft
```

It utilizes the following data bags to maintain its user restriction lists:

### minecraft/banned-ips

```json
{
    "id": "banned-ips",
    "ips": [
        "127.0.0.1",
        ...
    ]
}
```

### minecraft/banned-players

```json
{
    "id": "banned-players",
    "users": [
        "bad-behavior-guy",
        ...
    ]
}
```

### minecraft/ops

```json
{
    "id": "ops",
    "users": [
        "good-guy-greg",
        ...
    ]
}
```

### minecraft/white-list

```json
{
    "id": "white-list",
    "users": [
       "graham",
        ...
    ]
}
```
