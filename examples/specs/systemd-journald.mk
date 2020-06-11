IMAGE:=systemd-journald
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-journald
$(STAMP): DIRS=/dev /proc /run /sys /var
$(STAMP): FILES=/etc/machine-id /etc/nsswitch.conf /etc/passwd /etc/systemd/journald.conf /etc/systemd/journald.conf.d/override.conf /usr/lib/x86_64-linux-gnu/libnss_files.so.2  /usr/lib/x86_64-linux-gnu/libnss_systemd.so.2
$(STAMP): LINKS=/lib /lib64
