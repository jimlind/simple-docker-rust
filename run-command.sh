#!/bin/sh
name="simple-docker-rust"

docker build -t $name .
docker run -t -w /src $name sh -c "rustc print.rs; ./print"