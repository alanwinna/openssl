#!/bin/sh

OPENSSL_ROOT="$HOME/openssl"

mkdir -p "$OPENSSL_ROOT"
./Configure darwin64-x86_64-cc no-hw --prefix="$OPENSSL_ROOT" --openssldir=...
make install
cd ..
