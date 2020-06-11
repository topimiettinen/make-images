IMAGE:=acpid
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/sbin/acpid
$(STAMP): DIRS=/dev /etc/acpi/events /proc /run /sys /tmp
$(STAMP): LINKS=/lib /lib64
$(STAMP): USE_DEV=y
