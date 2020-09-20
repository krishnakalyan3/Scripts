#!/usr/bin/env bash

wget https://github.com/cdr/code-server/releases/download/v3.5.0/code-server-3.5.0-linux-x86_64.tar.gz
tar -xvzf code-server-3.5.0-linux-x86_64.tar.gz
cd code-server-3.5.0-linux-x86_64
export PASSWORD="abcd1234"
./code-server-3.5.0-linux-x86_64/bin/code-server --host 0.0.0.0 --port 8081
