IMAGE:=systemd-random-seed
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-random-seed
$(STAMP): DIRS=/dev /proc /sys /run /tmp /var/lib/systemd
$(STAMP): LINKS=/lib /lib64 /var/tmp
$(STAMP): USE_DEV=y
