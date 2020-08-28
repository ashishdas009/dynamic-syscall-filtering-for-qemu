# !/bin/bash

strace -k -emprotect -Ttt -o /tmp/qemu_mprotect.log qemu-system-x86_64 -enable-kvm -m 4096 -drive file=ubuntu-18.04-server-cloudimg-amd64.img,format=qcow2 -drive file=user-data.img,format=raw,if=ide,cache=writeback -vga none -display none -serial mon:stdio -smp 18

#strace -c -o /tmp/qemu_syscalls.log qemu-system-x86_64 -enable-kvm -m 4096 -drive file=ubuntu-18.04-server-cloudimg-amd64.img,format=qcow2 -drive file=user-data.img,format=raw,if=ide,cache=writeback -vga none -display none -serial mon:stdio -smp 18
