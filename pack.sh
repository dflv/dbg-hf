#!/bin/bash

cd initrd; find . | cpio -o > ../initrd.img; cd - >& /dev/null
