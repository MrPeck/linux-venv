#!/bin/sh

docker build -t gcc-x86_64-toolchain --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) --build-arg NAME=$(whoami) gcc-x86_64-toolchain

