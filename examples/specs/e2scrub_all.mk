IMAGE:=e2scrub
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/bin/bash /usr/bin/lsblk /usr/bin/readlink /usr/bin/sleep /usr/sbin/e2scrub /usr/sbin/e2scrub_all /usr/sbin/lvm
$(STAMP): DIRS=/dev /etc/lvm/profile /proc /run /sys /tmp
$(STAMP): FILES=/etc/lvm/* /etc/lvm/*/*
$(STAMP): LINKS=/bin /lib /lib64 /sbin /usr/sbin/lvs
$(STAMP): USE_DEV=y
