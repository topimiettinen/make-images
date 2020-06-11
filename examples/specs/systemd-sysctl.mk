IMAGE:=systemd-sysctl
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-sysctl
$(STAMP): DIRS=/dev /proc /sys /run /tmp
$(STAMP): FILES=/etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf
$(STAMP): FILES+=/etc/selinux/config /etc/selinux/default/policy/policy.32 /etc/selinux/default/seusers /etc/selinux/default/contexts/* /etc/selinux/default/contexts/files/* /etc/selinux/default/contexts/users/*
$(STAMP): LINKS=/lib /lib64
