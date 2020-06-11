IMAGE:=systemd-timesyncd
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-timesyncd
$(STAMP): DIRS=/dev /proc /run /sys /tmp /var/lib/systemd/timesync
$(STAMP): FILES=/etc/host.conf /etc/hosts /etc/systemd/timesyncd.conf.d/override.conf /etc/systemd/timesyncd.conf /etc/nsswitch.conf /usr/lib/x86_64-linux-gnu/libnss_dns.so.2 /usr/lib/x86_64-linux-gnu/libnss_files.so.2 /usr/lib/x86_64-linux-gnu/libnss_resolve.so.2
$(STAMP): LINKS=/etc/resolv.conf /lib /lib64 /var/tmp
$(STAMP): USE_DEV=y
