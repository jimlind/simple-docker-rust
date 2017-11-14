#!/bin/sh
docker build -t simple-docker-rust .
docker run -it -v $(pwd)/src:/src -w /src simple-docker-rust sh