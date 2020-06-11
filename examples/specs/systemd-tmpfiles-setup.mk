IMAGE:=systemd-tmpfiles
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/bin/systemd-tmpfiles
$(STAMP): DIRS=/dev /etc /proc /sys /run /tmp /var
$(STAMP): FILES=/etc/group /etc/nsswitch.conf /etc/passwd /etc/tmpfiles.d/*.conf /usr/lib/tmpfiles.d/*.conf /usr/lib/x86_64-linux-gnu/libnss_files.so.2
$(STAMP): FILES+=/etc/selinux/config /etc/selinux/default/policy/policy.32 /etc/selinux/default/seusers /etc/selinux/default/contexts/* /etc/selinux/default/contexts/files/* /etc/selinux/default/contexts/users/*
$(STAMP): LINKS=/bin /lib /lib64 /var/tmp
