Make RootImages

## Purpose

Build small images, suitable for use as
* `RootImage=` (or plain directory for `RootDirectory=`) for a systemd service
* cpio initrd image (experimental)
* system boot image (experimental)

The images should be as minimal as possible. It's however perfectly
fine and expected to duplicate files between images. `ldd` tool is
used to detect library dependencies.

## Features

* build squashfs images (`RootImage=`, system boot image)
* correct SELinux labels generated according to host policy
* ACLs and extended attributes copied from host system
* Make based dependencies (maybe a misfeature)

Because of use of squashfs, the images are read-only and thus
additional writable storage (such as `/run`, `/var`, `/tmp` etc.) is
typicaly needed. In the `RootImage=` case, these are expected to be
bind mounted.

## Example service specification
Input file (`specs/nftables.mk`):
```
IMAGE:=nftables
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/sbin/nft
$(STAMP): DIRS=/dev /proc /run /sys /tmp
$(STAMP): FILES=/etc/iproute2/rt_realms /etc/nftables.conf
$(STAMP): LINKS=/lib /lib64
$(STAMP): USE_DEV=y
```

Generated image:
```
squashfs-root
squashfs-root/dev
squashfs-root/etc
squashfs-root/etc/iproute2
squashfs-root/etc/iproute2/rt_realms
squashfs-root/etc/nftables.conf
squashfs-root/lib
squashfs-root/lib64
squashfs-root/proc
squashfs-root/run
squashfs-root/sys
squashfs-root/tmp
squashfs-root/usr
squashfs-root/usr/lib
squashfs-root/usr/lib/x86_64-linux-gnu
squashfs-root/usr/lib/x86_64-linux-gnu/libc.so.6
squashfs-root/usr/lib/x86_64-linux-gnu/libdl.so.2
squashfs-root/usr/lib/x86_64-linux-gnu/libgmp.so.10
squashfs-root/usr/lib/x86_64-linux-gnu/libjansson.so.4
squashfs-root/usr/lib/x86_64-linux-gnu/libmnl.so.0
squashfs-root/usr/lib/x86_64-linux-gnu/libnftables.so.1
squashfs-root/usr/lib/x86_64-linux-gnu/libnftnl.so.11
squashfs-root/usr/lib/x86_64-linux-gnu/libreadline.so.8
squashfs-root/usr/lib/x86_64-linux-gnu/libtinfo.so.6
squashfs-root/usr/lib/x86_64-linux-gnu/libxtables.so.12
squashfs-root/usr/lib64
squashfs-root/usr/lib64/ld-linux-x86-64.so.2
squashfs-root/usr/sbin
squashfs-root/usr/sbin/nft
```
