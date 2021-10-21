#!/bin/bash

git pull origin main

NAME=$(basename $PWD)
echo $NAME
docker build -t $NAME .
