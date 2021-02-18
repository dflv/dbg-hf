#!/bin/bash

pushd .. >& /dev/null

qemu-system-aarch64 \
    -M virt,gic-version=3 \
    -cpu cortex-a57 \
    -smp 4 \
    -nographic \
    -machine virtualization=true \
    -kernel out/reference/qemu_aarch64_clang/hafnium.bin \
    -initrd ./dbg/qemu_aarch64/initrd.img \
    -append "rdinit=/sbin/init"

popd >& /dev/null
