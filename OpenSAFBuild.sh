#!/bin/sh
set -x

hg clone http://hg.code.sf.net/p/opensaf/internal-docs opensaf-internal-docs
hg clone http://hg.code.sf.net/p/opensaf/staging opensaf-staging
hg clone http://hg.code.sf.net/p/opensaf/documentation opensaf-documentation

cd opensaf-staging
./bootstrap.sh
./configure --enable-python --enable-java --enable-tipc --enable-imm-pbe --enable-ntf-imcn
make
make rpm

