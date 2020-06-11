IMAGE:=systemd-cryptsetup
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-cryptsetup /usr/sbin/mkswap
$(STAMP): DIRS=/dev /proc /sys /run /tmp
$(STAMP): LINKS=/lib /lib64 /sbin
