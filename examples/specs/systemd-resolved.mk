IMAGE:=systemd-resolved
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-resolved
$(STAMP): DIRS=/dev /proc /run /sys /tmp
$(STAMP): FILES=/etc/systemd/resolved.conf /etc/systemd/resolved.conf.d/override.conf /usr/lib/systemd/resolv.conf
$(STAMP): LINKS=/etc/resolv.conf /lib /lib64
$(STAMP): USE_DEV=y
