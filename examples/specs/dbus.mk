IMAGE:=dbus
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/bin/dbus-daemon /usr/bin/dbus-send /usr/lib/dbus-1.0/dbus-daemon-launch-helper
$(STAMP): DIRS=/dev /proc /run /sys
$(STAMP): FILES=/etc/dbus-1/* /etc/dbus-1/*/* /etc/group /etc/passwd /etc/nsswitch.conf /usr/lib/x86_64-linux-gnu/libnss_files.so.2 /usr/lib/x86_64-linux-gnu/libnss_systemd.so.2 /usr/share/dbus-1/* /usr/share/dbus-1/*/* /var/lib/dbus/machine-id
$(STAMP): LINKS=/bin /lib /lib64
$(STAMP): USE_DEV=y
$(STAMP): FILES+=/etc/selinux/config /etc/selinux/default/policy/policy.32 /etc/selinux/default/seusers /etc/selinux/default/contexts/* /etc/selinux/default/contexts/files/* /etc/selinux/default/contexts/users/*
