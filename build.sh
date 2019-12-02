#!/bin/bash

git pull origin master

NAME=$(basename $PWD)
echo $NAME
docker build -t $NAME .
