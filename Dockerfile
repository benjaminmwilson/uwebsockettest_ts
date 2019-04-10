#alpine distributions not compatible with uwebsockets
FROM node:10-slim

WORKDIR /app

#wildcards so build won't fail if package-lock.json / npm-shrinkwrap.json not present
COPY package*.json npm-shrinkwra?.json /app/

#need git for websockets install
RUN apt-get update && apt-get install -y git && npm install

COPY dist /app/dist/

USER nobody
CMD node dist/index.js