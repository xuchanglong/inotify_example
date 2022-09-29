#! /bin/bash

if [ -z "$1" -o "run" == "$1" ]; then
    stransfer $(pwd)/stransfer/conf/example.conf
    ctransfer $(pwd)/ctransfer/conf/example.conf
fi