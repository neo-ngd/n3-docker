#!/bin/sh

nodeversion="v3.6.2"
pluginsversion=$nodeversion

echo "Downloading neo node $nodeversion"
wget https://github.com/neo-project/neo-node/releases/download/$nodeversion/neo-cli-linux-x64.zip
unzip neo-cli-linux-x64.zip -d ./

echo "Downloading plugins $pluginsversion"
wget https://github.com/neo-project/neo-modules/releases/download/$pluginsversion/ApplicationLogs.zip
wget https://github.com/neo-project/neo-modules/releases/download/$pluginsversion/RpcServer.zip
wget https://github.com/neo-project/neo-modules/releases/download/$pluginsversion/TokensTracker.zip
unzip ApplicationLogs.zip -d ./neo-cli/
unzip RpcServer.zip -d ./neo-cli/
unzip TokensTracker.zip -d ./neo-cli/

sed -i "s/127.0.0.1/0.0.0.0/g" neo-cli/Plugins/RpcServer/config.json

echo "Node Ready!"

# if [ -z "$2" ]; then
#     echo "Downloading plugins $plguinsversion"
#     wget https://github.com/neo-project/neo-modules/releases/download/$plguinsversion/ApplicationLogs.zip
#     wget https://github.com/neo-project/neo-modules/releases/download/$plguinsversion/RpcServer.zip
# else
#     echo "Downloading plugins $2"
#     wget https://github.com/neo-project/neo-modules/releases/download/$2/ApplicationLogs.zip
#     wget https://github.com/neo-project/neo-modules/releases/download/$2/RpcServer.zip
# fi
