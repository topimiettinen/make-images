IMAGE:=systemd-logind
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-logind
$(STAMP): DIRS=/dev /proc /run /sys
$(STAMP): FILES=/etc/nsswitch.conf /etc/passwd /etc/systemd/logind.conf /etc/systemd/logind.conf.d/override.conf /usr/lib/x86_64-linux-gnu/libnss_files.so.2  /usr/lib/x86_64-linux-gnu/libnss_systemd.so.2
$(STAMP): LINKS=/lib /lib64
$(STAMP): USE_DEV=y
