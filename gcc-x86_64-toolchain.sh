#!/bin/sh

if [ $# -eq 0 ]
then
    INTERACTIVE="-it"	
fi

docker run $INTERACTIVE --rm -v "$HOME":"$HOME" -w "$PWD" --hostname docker gcc-x86_64-toolchain:latest $@

