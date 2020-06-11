IMAGE:=auditd
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/sbin/auditd /usr/sbin/auditctl /usr/sbin/audispd
$(STAMP): DIRS=/dev /proc /run /sys /tmp /var/log/audit
$(STAMP): FILES=/etc/audisp/* /etc/audisp/*/* /etc/audit/* /etc/audit/*/*
$(STAMP): LINKS=/lib /lib64 /sbin /var/run /var/tmp
$(STAMP): USE_DEV=y
