IMAGE:=upower
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/libexec/upowerd
$(STAMP): DIRS=/dev /proc /run /sys /tmp /var/lib/upower
$(STAMP): FILES=/etc/UPower/UPower.conf
$(STAMP): LINKS=/lib /lib64 /var/run /var/tmp
$(STAMP): USE_DEV=y
