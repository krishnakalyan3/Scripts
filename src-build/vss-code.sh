#!/usr/bin/env bash

wget https://github.com/cdr/code-server/releases/download/3.4.1/code-server-3.4.1-linux-x86_64.tar.gz
tar -xvzf code-server-3.4.1-linux-x86_64.tar.gz
cd code-server-3.4.1-linux-x86_64
export PASSWORD="abcd1234"
./code-server  --host 0.0.0.0

@category:"programming languages" @sort:installs 
