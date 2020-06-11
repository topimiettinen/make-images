IMAGE:=newroot
STAMP:=$(call stampdir,$(IMAGE))
SYSTEM_STAMPS+=$(STAMP)

$(STAMP): private BINS=/usr/lib/systemd/systemd /usr/lib/systemd/systemd-udevd /usr/lib/systemd/systemd-journald /usr/lib/systemd/systemd-shutdown /usr/bin/kmod /usr/sbin/lvm /usr/sbin/mkswap /usr/sbin/swapon /usr/sbin/swapoff
$(STAMP): private BINS+=/usr/lib/systemd/system-generators/lvm2-activation-generator /usr/lib/systemd/system-generators/systemd-cryptsetup-generator /usr/lib/systemd/system-generators/systemd-fstab-generator /usr/lib/systemd/system-generators/systemd-getty-generator /usr/lib/systemd/system-generators/systemd-hibernate-resume-generator
$(STAMP): private BINS+=/usr/bin/mount /usr/bin/umount
$(STAMP): private BINS+=/usr/lib/x86_64-linux-gnu/libsepol.so.1
$(STAMP): private DIRS=/dev /etc /home /proc /run /setuid /sys /tmp /usr /var
$(STAMP): private DIRS_ALL_NOFLATTEN=/etc/systemd /usr/lib/systemd/system /usr/lib/systemd/user
$(STAMP): private FILES=/etc/crypttab /etc/group /etc/hostname /etc/lvm/* /etc/machine-id /etc/nsswitch.conf /etc/os-release /etc/passwd
$(STAMP): private FILES+=/etc/selinux/config /etc/selinux/default/policy/policy.32 /etc/selinux/default/seusers /etc/selinux/default/contexts/* /etc/selinux/default/contexts/files/* /etc/selinux/default/contexts/users/*

# include service rootimages
$(STAMP): private FILES+=$(CONFIG_IMAGE_DIR)/*-all.squashfs
$(STAMP): private KVER_FILES=$(CONFIG_IMAGE_DIR)/*-@@KVER@@.squashfs
$(STAMP): private FILES+=/usr/lib/firmware/iwlwifi-7260-17.ucode /usr/lib/firmware/intel/ibt-hw-37.7.10-fw-1.80.2.3.d.bseq /usr/lib/firmware/rtl_nic/rtl8168g-3.fw
#$(STAMP): private DIRS_ALL_NOFLATTEN+=$(CONFIG_IMAGE_DIR)/*-all.dir
#$(STAMP): private KVER_DIRS_ALL_NOFLATTEN+=$(CONFIG_IMAGE_DIR)/*-@@KVER@@.dir
$(STAMP): private LINKS=/bin /lib /lib64 /sbin /usr/sbin/init /usr/sbin/lvmconfig /usr/sbin/modprobe

# files which need to be different from real root
$(STAMP): private SPECIAL_FILES=$(CONFIG_FILES_DIR)/fstab.newroot:/etc/fstab
$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/-.mount:/etc/systemd/system/-.mount
$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/rootimage-debian.conf:/etc/systemd/system/display-manager.service.d/rootimage-debian.conf $(CONFIG_FILES_DIR)/rootimage-debian.conf:/etc/systemd/system/user@.service.d/rootimage-debian.conf $(CONFIG_FILES_DIR)/rootimage-debian.conf:/etc/systemd/system/ssh@.service.d/rootimage-debian.conf
$(STAMP): private SPECIAL_FILES+=$(CONFIG_FILES_DIR)/rootimage-dev-getty.conf:/etc/systemd/system/getty@.service.d/rootimage-dev-getty.conf
$(STAMP): private IMAGE_SIZE=300M
$(STAMP): private USE_DEV=y
$(STAMP): private USE_KVERS=y

# systemd-user-runtime-dir
$(STAMP): private BINS+=/usr/lib/systemd/systemd-user-runtime-dir
$(STAMP): private DIRS+=/dev /etc /proc /sys /run /tmp /var
$(STAMP): private FILES+=/etc/group /etc/nsswitch.conf /etc/passwd /usr/lib/x86_64-linux-gnu/libnss_files.so.2

# debugging
$(STAMP): private BINS+=/usr/bin/bash /usr/bin/dash /usr/sbin/ausearch /usr/bin/less
$(STAMP): private BINS+=/usr/bin/ls /usr/bin/cat /usr/bin/mount /usr/bin/strace /usr/bin/ps /usr/bin/journalctl /usr/bin/systemctl /usr/bin/grep /usr/bin/vi /usr/bin/less /usr/bin/bash /usr/bin/lsblk /usr/bin/umount /usr/bin/cp
$(STAMP): private DIRS+=/root
$(STAMP): private FILES+=/root/.inputrc /root/.bashrc /root/.bash_profile
$(STAMP): private LINKS+=/usr/bin/sh
