#!/bin/bash

COLOR_YELLOW='\033[1;49;33m';
COLOR_CLEAN='\033[0m';
SCRIPT_PATH=$(dirname $(realpath $0))
DOCKER_PATH=$(dirname $SCRIPT_PATH)

echo -e "${COLOR_YELLOW}================================="
echo "=====  docker-compose down $@ ====="
echo "================================="

echo -e "${COLOR_CLEAN}"

(cd $DOCKER_PATH; docker-compose down $@ )