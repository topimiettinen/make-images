IMAGE:=smartmontools
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/sbin/smartd
$(STAMP): DIRS=/dev /proc /run /sys /tmp /var/lib/smartmontools
$(STAMP): FILES=/etc/smart_drivedb.h /etc/smartd.conf
$(STAMP): LINKS=/lib /lib64 /var/run /var/tmp
$(STAMP): USE_DEV=y
