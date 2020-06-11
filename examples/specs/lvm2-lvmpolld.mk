IMAGE:=lvm
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/sbin/lvm /usr/sbin/lvmpolld
$(STAMP): DIRS=/dev /etc/lvm/profile /proc /run /sys /tmp
$(STAMP): FILES=/etc/lvm/* /etc/lvm/*/*
$(STAMP): LINKS=/lib /lib64 /sbin
