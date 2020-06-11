IMAGE:=systemd-backlight
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-backlight
$(STAMP): DIRS=/dev /proc /sys /run /var/lib/systemd/backlight /tmp
$(STAMP): LINKS=/lib /lib64 /var/tmp
$(STAMP): USE_DEV=y
