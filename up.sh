#!/bin/bash

TOP=~/Lab/hafnium

SERIAL="`date +%s`"

pushd $TOP >& /dev/null

find . -name ".git" | grep "out" -vw | sort > /tmp/hafnium-$SERIAL

while IFS= read -r line
do
    folder="`echo $line | sed 's/\/\.git//'`"
    echo "checking $folder ..."
    pushd $folder >& /dev/null
    git pull
    popd >& /dev/null
done < "/tmp/hafnium-$SERIAL"

rm -f /tmp/hafnium-$SERIAL

echo "updating index ..."
cscope -Rkb
ctags -R

popd >& /dev/null
