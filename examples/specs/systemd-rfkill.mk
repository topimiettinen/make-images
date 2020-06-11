IMAGE:=systemd-rfkill
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-rfkill
$(STAMP): DIRS=/dev /proc /sys /run /tmp /var/lib/systemd/rfkill
$(STAMP): LINKS=/lib /lib64 /var/tmp
$(STAMP): USE_DEV=y
