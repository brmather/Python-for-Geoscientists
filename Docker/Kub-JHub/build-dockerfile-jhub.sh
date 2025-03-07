#!/bin/sh

# Docker build command for the base python image
# Currently we are at version 1.05

# 1.05 includes the jupyter notebook extensions but not litho1pt0 and stripy


set -e
cd $(dirname "$0")/../..

docker build -t lmoresi/docker-vieps-pye-jhub:2019.04.12  -f Docker/Kub-JHub/Dockerfile-jhub  .
