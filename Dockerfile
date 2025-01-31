FROM ubuntu

WORKDIR /bedrock-server

RUN apt-get update && apt-get install -y curl

COPY bedrock-server-1.21.51.02 /bedrock-server
COPY server.properties /bedrock-server/server.properties

ENTRYPOINT LD_LIBRARY_PATH=. ./bedrock_server
