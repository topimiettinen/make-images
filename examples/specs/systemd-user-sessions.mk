IMAGE:=systemd-user-sessions
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-user-sessions
$(STAMP): DIRS=/dev /proc /sys /run /tmp
$(STAMP): LINKS=/lib /lib64
$(STAMP): USE_DEV=y
