#!/bin/bash

cd ..
qemu-system-aarch64 -M virt,gic_version=3 -cpu cortex-a57 -smp 4 -nographic -machine virtualization=true -kernel out/reference/qemu_aarch64_clang/hafnium.bin -initrd ./dbg/initrd.img -append "rdinit=/sbin/init" -s -S
cd - >& /dev/null
