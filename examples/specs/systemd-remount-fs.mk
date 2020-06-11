IMAGE:=systemd-remount-fs
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-remount-fs /usr/bin/mount
$(STAMP): DIRS=/dev /etc/systemd/system /proc /sys /run /tmp
$(STAMP): FILES_NOFLATTEN=/etc/systemd/system/*.mount
$(STAMP): LINKS=/bin /lib /lib64
$(STAMP): SPECIAL_FILES=$(CONFIG_FILES_DIR)/fstab.newroot:/etc/fstab
$(STAMP): SPECIAL_FILES+=$(CONFIG_FILES_DIR)/-.mount:/etc/systemd/system/-.mount
