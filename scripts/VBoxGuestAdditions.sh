#!/bin/sh

mount -ro loop ~/VBoxGuestAdditions.iso /mnt
/mnt/VBoxLinuxAdditions.run -- --force
umount /mnt

exit 0

