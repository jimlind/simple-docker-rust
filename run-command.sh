#!/bin/sh
docker build -t simple-docker-rust .
docker run -t -w /src simple-docker-rust sh -c "rustc print.rs; ./print"