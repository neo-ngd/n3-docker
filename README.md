# N3-Docker

## Quick Start

You can use our default deployed images directly, see [n3-docker](https://github.com/neo-ngd/n3-docker/pkgs/container/n3-docker).
The default node contains ApplicationLogs and RpcServer Plugins(see **prepare-node.sh**).

```shell
docker run -dit --name n3-node -p 10332-10334:10332-10334 ghcr.io/neo-ngd/n3-docker:latest
```

## Manual Build

You can change the scripts and build your own docker images.

```shell
docker build -t neo-cli .
docker run -dit --name n3-node -p 10332-10334:10332-10334 neo-cli
```

## File Description

- **Dockerfile**: Docker build file
- **prepare-node.sh**: Download node and plugins files, update `nodeversion` after NEO release new version node and plugins.
- **start.sh**: Container start script, start node with `screen`
