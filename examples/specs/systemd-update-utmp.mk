IMAGE:=systemd-update-utmp
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-update-utmp
$(STAMP): DIRS=/dev /proc /sys /run /tmp /var/log
$(STAMP): LINKS=/lib /lib64 /var/tmp
$(STAMP): USE_DEV=y
