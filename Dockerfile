FROM ubuntu:18.04 as Build
RUN apt-get update && apt-get install -y wget \
    unzip \
    sed \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /neo
COPY prepare-node.sh .
RUN sh ./prepare-node.sh

FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS Final
RUN apt-get update && apt-get install -y screen \
    curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /neo-cli
COPY --from=Build /neo/neo-cli .
COPY start.sh .
# RUN chmod +x start.sh

ENTRYPOINT ["sh","/neo-cli/start.sh" ]