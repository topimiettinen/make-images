IMAGE:=systemd-fsck
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-fsck /usr/lib/systemd/systemd-fsckd /usr/sbin/e2fsck /usr/sbin/fsck /usr/sbin/fsck.cramfs /usr/sbin/fsck.fat /usr/sbin/fsck.minix
$(STAMP): DIRS=/etc /dev /proc /sys /run /tmp
$(STAMP): LINKS=/lib /lib64 /sbin /usr/sbin/fsck.ext2 /usr/sbin/fsck.ext3 /usr/sbin/fsck.ext4 /usr/sbin/fsck.msdos /usr/sbin/fsck.vfat
$(STAMP): SPECIAL_FILES=$(CONFIG_FILES_DIR)/mtab:/etc/mtab
