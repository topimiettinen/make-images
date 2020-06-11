IMAGE:=iwd
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/libexec/iwd
$(STAMP): DIRS=/dev /etc/iwd /proc /sys /run /var/lib/iwd /tmp
$(STAMP): LINKS=/lib /lib64 /var/run /var/tmp
$(STAMP): USE_DEV=y
