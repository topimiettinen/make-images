IMAGE:=getty
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-sulogin-shell /usr/bin/login /usr/sbin/sulogin /usr/sbin/agetty
$(STAMP): BINS+=/usr/bin/ls /usr/bin/cat /usr/bin/mount /usr/bin/strace /usr/bin/ps /usr/bin/journalctl /usr/bin/systemctl /usr/bin/grep /usr/bin/vi /usr/bin/less /usr/bin/bash /usr/bin/lsblk /usr/bin/umount /usr/bin/cp
$(STAMP): BINS+=/usr/lib/x86_64-linux-gnu/libnss_files.so.2 /usr/lib/x86_64-linux-gnu/security/pam_*.so
$(STAMP): DIRS=/dev /etc /home /proc /run /setuid /sys /tmp /usr /var
$(STAMP): DIRS+=/root
$(STAMP): FILES=/etc/group /etc/nsswitch.conf /etc/passwd /usr/lib/x86_64-linux-gnu/libnss_files.so.2
$(STAMP): FILES+=/etc/pam.conf /etc/pam.d/* /etc/security/* /etc/security/*/* /usr/lib/terminfo/l/linux
$(STAMP): FILES+=/root/.inputrc /root/.bashrc /root/.bash_profile
$(STAMP): FILES+=/etc/selinux/config /etc/selinux/default/policy/policy.32 /etc/selinux/default/seusers /etc/selinux/default/contexts/* /etc/selinux/default/contexts/files/* /etc/selinux/default/contexts/users/*
$(STAMP): LINKS=/bin /lib /lib64 /sbin
$(STAMP): IMAGE_SIZE=30M
$(STAMP): USE_DEV=y
