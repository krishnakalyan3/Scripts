#!/usr/bin/env bash

wget https://github.com/cdr/code-server/releases/download/2.1698/code-server2.1698-vsc1.41.1-linux-x86_64.tar.gz
tar -xvzf code-server2.1692-vsc1.39.2-linux-x86_64.tar.gz
cd code-server2.1692-vsc1.39.2-linux-x86_64
./code-server  --host 0.0.0.0
