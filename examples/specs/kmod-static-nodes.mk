IMAGE:=kmod-static-nodes
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/bin/kmod
$(STAMP): DIRS=/dev /proc /run /sys
$(STAMP): KVER_FILES=/usr/lib/modules/@@KVER@@/modules.*
$(STAMP): LINKS=/bin /lib /lib64
$(STAMP): USE_KVERS=y
