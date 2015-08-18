#/bin/bash

sudo python hisi-idt.py -d /dev/ttyUSB1 --img1=l-loader.bin &&

sudo fastboot flash ptable ptable-linux.img && \
sudo fastboot flash fastboot fip.bin &&\
sudo fastboot flash nvme nvme.img &&\
sudo fastboot flash boot boot-fat.uefi.img &&\
sudo fastboot flash system developer-305.img &&\
sudo fastboot  reboot


