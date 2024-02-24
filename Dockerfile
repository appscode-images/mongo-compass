FROM node:16

ARG TARGETOS
ARG TARGETARCH
ARG TAG

COPY compass /compass

WORKDIR /compass/packages/compass-web

# Define the entry point command
# ENTRYPOINT [ "npm", "run", "start" ]
ENTRYPOINT [ "npm", "run", "webpack", "serve", "--", "--mode", "production" ]
