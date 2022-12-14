# N3-Docker

## File Description

- **Dockerfile**: Docker build file
- **prepare-node.sh**: Download node and plugins files, update `nodeversion` after NEO release new version node and plugins.
- **start.sh**: Container start script, start node with `screen`

## Build example

```shell
docker build -t neo-cli .
docker run -dit --name n3-node -p 10332-10334:10332-10334 neo-cli
```
The default node contains ApplicationLogs and RpcServer Plugins(see **prepare-node.sh**).

## Quick Start

You can use our default deployed images directly, see [n3-docker](https://github.com/nep-ngd/N3-Docker/pkgs/container/n3-docker).

```shell
docker run -dit --name n3-node -p 10332-10334:10332-10334 ghcr.io/neo-ngd/n3-docker:latest
```