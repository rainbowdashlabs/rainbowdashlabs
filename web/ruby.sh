#!/bin/sh
docker run --rm -it -v $(pwd):/root --user 1000:1000 --workdir "/root" ruby:3.1 bash
