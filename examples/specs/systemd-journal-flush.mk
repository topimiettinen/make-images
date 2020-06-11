IMAGE:=systemd-journal-flush
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/bin/journalctl
$(STAMP): DIRS=/dev /proc /sys /run /tmp
$(STAMP): LINKS=/bin /lib /lib64
$(STAMP): USE_DEV=y
