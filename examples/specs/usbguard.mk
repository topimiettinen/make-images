IMAGE:=usbguard
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/sbin/usbguard-daemon
$(STAMP): DIRS=/dev/shm /dev/usb /proc /run /sys /tmp /var/log/usbguard
$(STAMP): FILES=/etc/nsswitch.conf /etc/usbguard/rules.conf /etc/usbguard/usbguard-daemon.conf /etc/usbguard/IPCAccessControl.d/1000
$(STAMP): LINKS=/lib /lib64 /var/run /var/tmp
$(STAMP): USE_DEV=y
