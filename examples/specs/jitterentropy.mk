IMAGE:=jitterentropy
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/sbin/jitterentropy-rngd
$(STAMP): DIRS=/dev /proc /run /sys /tmp
$(STAMP): LINKS=/lib /lib64
$(STAMP): USE_DEV=y
