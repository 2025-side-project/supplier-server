#!/usr/bin/env sh

set -x

docker run \
  --name redis \
  -p 6379:6379 \
  -d redis:7.0.11-alpine
