#!/bin/bash

TOP=~/Lab/hafnium

pushd $TOP >& /dev/null

echo "updating code ..."
git pull
git pull --recurse-submodules

echo "updating index ..."
cscope -Rkb
ctags -R

popd >& /dev/null
