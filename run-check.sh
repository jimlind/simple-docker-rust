#!/bin/sh
name="simple-docker-rust"

docker build -q -t $name .
image=$(docker images $name)
version=$(docker run -t -w /src $name rustc --version)

echo "LANGUAGE: Rust ${version##* }"
echo "SIZE: ${image##* }\n"
