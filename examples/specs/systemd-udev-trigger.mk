IMAGE:=systemd-udev-trigger
STAMP:=$(call stampdir,$(IMAGE))
#STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/bin/udevadm
$(STAMP): DIRS=/dev /proc /sys /run /tmp
$(STAMP): FILES=/etc/udev/udev.conf
$(STAMP): LINKS=/bin /lib /lib64
