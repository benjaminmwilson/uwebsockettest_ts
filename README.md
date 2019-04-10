# uWebSocket / Typescript Hello World

## Overview

Hello World using [uWebSocket](https://github.com/uNetworking/uWebSockets)
and [Typescript](https://www.typescriptlang.org/)

_uWebSocket_ is an Express-like way to produce web services but
bypasses V8's I/O engine with a native code implementation to achieve
greater performance. 

This sample can be run locally or via Docker

## Running Locally

    npm install
    npm start
    
## Running Via Docker

    docker build -t uwebsockettest_ts .
    docker run -p9001:9001 -ti uwebsockettest_ts
    
