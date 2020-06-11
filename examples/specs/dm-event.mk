IMAGE:=dm-event
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/sbin/dmeventd
$(STAMP): DIRS=/dev /proc /sys /run /tmp
$(STAMP): LINKS=/lib /lib64 /sbin
