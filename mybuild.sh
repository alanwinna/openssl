#!/bin/sh

. ../PREFIX

OPENSSL_ROOT="$MYPREFIX"

git clean -f
git clean -fd
git checkout -- .
./Configure darwin64-x86_64-cc no-hw no-shared \
  --prefix="$OPENSSL_ROOT" --openssldir=ssl
make install
