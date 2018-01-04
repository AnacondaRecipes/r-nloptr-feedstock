#!/bin/bash

# Not sure what writes this file but it ends up with CC = clang and CXX = clang++
if [[ ${HOST} =~ .*darwin.* ]]; then
  rm -rf ~/.R/Makevars
fi

libtoolize --copy
autoreconf -vfi
$R CMD INSTALL --build .
