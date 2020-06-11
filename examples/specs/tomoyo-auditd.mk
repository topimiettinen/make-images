IMAGE:=tomoyo-auditd
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/sbin/tomoyo-auditd
$(STAMP): DIRS=/dev /proc /run /sys /tmp /var/log/tomoyo
$(STAMP): FILES=/etc/tomoyo/tools/auditd.conf
$(STAMP): LINKS=/lib /lib64 /var/tmp
$(STAMP): USE_DEV=y
