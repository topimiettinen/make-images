IMAGE:=systemd-udevd
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/bin/dash /usr/bin/kmod /usr/bin/udevadm /usr/lib/crda/lib*.so /usr/lib/systemd/systemd-sysctl /usr/lib/systemd/systemd-udevd /usr/lib/udev/* /usr/sbin/dmsetup /usr/sbin/iw
$(STAMP): BINS+=/usr/bin/bash /usr/bin/cut /usr/bin/egrep /usr/bin/grep /usr/bin/id /usr/bin/which
$(STAMP): DIRS=/dev /proc /sys /run /tmp
$(STAMP): DIRS_ALL_NOFLATTEN=/etc/udev
$(STAMP): FILES=/etc/group /etc/nsswitch.conf /etc/passwd /usr/lib/crda/* /usr/lib/crda/*/* /usr/lib/udev/rules.d/* /usr/lib/x86_64-linux-gnu/libnss_files.so.2
$(STAMP): FILES+=/etc/modprobe.d/*.conf /etc/modules /usr/lib/modules-load.d/*.conf
$(STAMP): FILES+=/etc/selinux/config /etc/selinux/default/policy/policy.32 /etc/selinux/default/seusers /etc/selinux/default/contexts/* /etc/selinux/default/contexts/files/* /etc/selinux/default/contexts/users/*
$(STAMP): FILES+=/usr/lib/firmware/iwlwifi-7260-17.ucode /usr/lib/firmware/intel/ibt-hw-37.7.10-fw-1.80.2.3.d.bseq /usr/lib/firmware/rtl_nic/rtl8168g-3.fw
$(STAMP): FILES+=/usr/local/bin/netlabel-config
#FILES+=$(shell lsmod | grep -v Module | awk '{print $$1}' | xargs -n1 modinfo --filename 2>/dev/null | sort -u | sed -e 's/'`uname -r`'/'$(KVER)'/g' -e 's/^\/lib\//\/usr\/lib\//g')
#FILES+=$(shell sed -e 's/'`uname -r`'/'$(KVER)'/g' -e 's/^\/lib\//\/usr\/lib\//g' < $(CONFIG_FILES_DIR)/modules.good)
$(STAMP): KVER_FILES+=/usr/lib/modules/@@KVER@@/modules.* /usr/lib/modules/@@KVER@@/updates/dkms/*
$(STAMP): KVER_FILES_LIST+=$(CONFIG_FILES_DIR)/modules-@@KVER@@
#$(STAMP): KVER_DIRS_ALL_NOFLATTEN+=/usr/lib/modules/@@KVER@@
$(STAMP): LINKS=/bin /lib /lib64 /sbin
$(STAMP): LINKS+=/usr/bin/sh /usr/local/sbin /usr/sbin/modprobe
$(STAMP): USE_KVERS=y