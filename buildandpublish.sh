#!/bin/bash

docker build . -t danielgran/debian-base:latest

docker push danielgran/debian-base:latest