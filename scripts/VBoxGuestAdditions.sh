#!/bin/sh
# Reluctantly put these steps in this script to overcome VirtualBox's GuestAddition
# installation process returning RC 2 even when successful
# Annoyingly, packer doesn't have an option to ignore errors for known situations like this

mount -ro loop ~/VBoxGuestAdditions.iso /mnt
/mnt/VBoxLinuxAdditions.run -- --force		# --force needed to overwrite existing GuestAdditions without being prompted
umount /mnt

exit 0

