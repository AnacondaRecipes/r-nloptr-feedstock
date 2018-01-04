#!/bin/bash

# export DYLD_FALLBACK_LIBRARY_PATH=$PREFIX/lib

# Not sure what writes this file but it ends up with CC = clang
if [[ ${HOST} =~ .*darwin.* ]]; then
  rm -rf ~/.R/Makevars
fi

autoreconf -vfi
$R CMD INSTALL --build .
# --configure-args="--with-nlopt-cflags=-I${PREFIX}/include --with-nlopt-libs=\"-L${PREFIX}/lib -lnlopt\"" .
