#! /bin/bash

if [ -z "$1" ]; then
    cmake . -Bbuild
    cmake --build build

    echo "host=127.0.0.1
port=11223
key=ruo_xiao
log=
" > $(pwd)/stransfer/conf/example.conf

    echo "host=127.0.0.1
port=11223
key=ruo_xiao
log=
ignore=.*\.tmp
src_dir=$(pwd)/test/src/
dst_dir=$(pwd)/test/dist/
buffer_size=4096
delay=10
    " > $(pwd)/ctransfer/conf/example.conf
fi

if [ "install" == "$1" ]; then
    sudo cp -rf ./build/ctransfer/ctransfer /usr/local/bin/ctransfer
    sudo cp -rf ./build/stransfer/stransfer /usr/local/bin/stransfer
fi

if [ "uninstall" == "$1" ]; then
    sudo rm -rf /usr/local/bin/ctransfer
    sudo rm -rf /usr/local/bin/stransfer
fi
