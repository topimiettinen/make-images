IMAGE:=blk-availability
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/bin/grep /usr/bin/lsblk /usr/bin/mountpoint /usr/bin/bash /usr/bin/sort /usr/bin/test /usr/bin/true /usr/bin/umount /usr/sbin/blkdeactivate /usr/sbin/dmsetup /usr/sbin/lvm
$(STAMP): DIRS=/dev /etc /proc /sys /run /tmp /var
$(STAMP): FILES=/etc/lvm/* /etc/lvm/*/*
$(STAMP): LINKS=/bin /lib /lib64 /sbin /var/tmp
$(STAMP): SPECIAL_FILES=$(CONFIG_FILES_DIR)/fstab.newroot:/etc/fstab
$(STAMP): SPECIAL_FILES=$(CONFIG_FILES_DIR)/mtab:/etc/mtab
$(STAMP): USE_DEV=y
