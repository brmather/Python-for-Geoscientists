#!/bin/sh

# Docker build command for the base python image
# Currently we are at version 1.0.7

# 1.05 includes the jupyter notebook extensions but not litho1pt0 and stripy
# The latter are built at the next level up (using the modules in this repo)

# 1.0.7 does include stripy, litho1pt0 and lavavu


set -e
cd $(dirname "$0")/..

docker build -f Docker/Dockerfile-unimelb-debian-python -t lmoresi/lmoresi-debian-python:1.0.8 .
