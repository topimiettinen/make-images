IMAGE:=initrd.img
STAMP:=$(call stampdir,$(IMAGE))
BOOT_STAMPS+=$(STAMP)

$(STAMP): private BINS=/usr/lib/systemd/systemd /usr/lib/systemd/systemd-journald /usr/lib/systemd/systemd-udevd /usr/bin/kmod /usr/bin/mount /usr/bin/udevadm /usr/sbin/dmsetup
$(STAMP): private BINS+=/usr/bin/bash /usr/bin/mkdir /usr/bin/mount /usr/bin/ls /usr/bin/cat /usr/bin/journalctl /usr/bin/systemctl /usr/bin/ps /usr/bin/strace /usr/bin/rm /usr/bin/rmdir /usr/bin/umount /usr/bin/less

$(STAMP): private DIRS=/dev /etc /proc /run /sys /tmp /usr/bin /usr/lib/systemd/system/initrd.target.wants /usr/lib/systemd/system/sysinit.target.wants /usr/sbin /sysroot /var
$(STAMP): private DIRS_ALL_NOFLATTEN+=/etc/udev
$(STAMP): private DIRS_ALL_NOFLATTEN+=/usr/lib/udev

$(STAMP): private FILES+=/etc/machine-id
$(STAMP): private FILES+=/usr/lib/systemd/system/modprobe@.service
$(STAMP): private FILES+=/usr/lib/systemd/system/basic.target
$(STAMP): private FILES+=/usr/lib/systemd/system/debug-shell.service
$(STAMP): private FILES+=/usr/lib/systemd/system/initrd-switch-root.service
$(STAMP): private FILES+=/usr/lib/systemd/system/initrd*.target
$(STAMP): private FILES+=/usr/lib/systemd/system/lvm2-pvscan@.service
$(STAMP): private FILES+=/usr/lib/systemd/system/sysinit.target
$(STAMP): private FILES+=/usr/lib/systemd/system/systemd-journald*

$(STAMP): private KVER_FILES+=/usr/lib/modules/@@KVER@@/modules.*
$(STAMP): private KVER_FILES_LIST+=$(CONFIG_FILES_DIR)/modules-initrd.img-@@KVER@@

$(STAMP): private LINKS=/bin /lib /lib64 /sbin /usr/sbin/modprobe /usr/sbin/reboot

$(STAMP): private SPECIAL_FILES=/usr/lib/os-release:/etc/initrd-release
$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/default.target:/usr/lib/systemd/system/default.target
$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/lvmscan-root.service:/usr/lib/systemd/system/lvmscan-root.service
$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/systemd-udevd.service:/usr/lib/systemd/system/systemd-udevd.service
$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/sysroot.mount:/usr/lib/systemd/system/sysroot.mount
$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/initrd.target.wants/systemd-journald.service:/usr/lib/systemd/system/initrd.target.wants/systemd-journald.service
$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/initrd.target.wants/systemd-udevd.service:/usr/lib/systemd/system/initrd.target.wants/systemd-udevd.service
$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/initrd.target.wants/sysroot.mount:/usr/lib/systemd/system/initrd.target.wants/sysroot.mount
$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/initrd.target.wants/lvmscan-root.service:/usr/lib/systemd/system/initrd.target.wants/lvmscan-root.service

$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/initrd.target.wants/debug-shell.service:/usr/lib/systemd/system/initrd.target.wants/debug-shell.service
$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/initrd.target.wants/debug-shell.service:/usr/lib/systemd/system/sysinit.target.wants/debug-shell.service

$(STAMP): private USE_INITRD=y
$(STAMP): private USE_KVERS=y

$(STAMP): private BINS+=/usr/sbin/lvm
$(STAMP): private DIRS+=/etc/lvm/profile
$(STAMP): private FILES+=/etc/lvm/* /etc/lvm/*/*
