#!/bin/bash

NAME=$(basename $PWD)
docker run --restart=always -p 127.0.0.1:18001:18001 -it $NAME
