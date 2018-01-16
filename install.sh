#!/bin/sh
apt-get update
apt-get install -y wget git python lsb-release
echo "deb http://llvm.org/apt/trusty/ llvm-toolchain-trusty-3.9 main" | tee /etc/apt/sources.list.d/llvm.list
wget --no-check-certificate -O - http://llvm.org/apt/llvm-snapshot.gpg.key | apt-key add -
apt-get update
apt-get install -y cmake llvm-3.9 clang-3.9 lldb-3.9 liblldb-3.9-dev libunwind8 libunwind8-dev gettext libicu-dev liblttng-ust-dev libcurl4-openssl-dev libssl-dev uuid-dev libnuma-dev libkrb5-dev
