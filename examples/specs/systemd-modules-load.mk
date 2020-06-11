IMAGE:=systemd-modules-load
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/bin/kmod /usr/lib/systemd/systemd-modules-load
$(STAMP): DIRS=/dev /proc /sys /run /tmp /usr/sbin
$(STAMP): FILES=/etc/modprobe.d/*.conf /etc/modules /etc/modules-load.d/[bn]*.conf /usr/lib/modules-load.d/*.conf
$(STAMP): KVER_DIRS_ALL_NOFLATTEN+=/usr/lib/modules/@@KVER@@
$(STAMP): LINKS=/bin /lib /lib64 /sbin
$(STAMP): LINKS+=/usr/sbin/modprobe
$(STAMP): LINKS+=/etc/modules-load.d/[c-mo-z]*.conf
$(STAMP): USE_KVERS=y
