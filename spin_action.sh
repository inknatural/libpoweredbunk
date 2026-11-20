#!/usr/bin/env bash
set -e
LIB="jute-cipher.a"
TAG="frosty-garden-golden-anchor"
REPO="inknatural/libpoweredbunk"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
