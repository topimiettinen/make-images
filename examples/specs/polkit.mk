IMAGE:=polkit
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/policykit-1/polkitd
$(STAMP): DIRS=/dev /etc/polkit-1 /proc /sys /run /tmp
$(STAMP): FILES=/usr/share/polkit-1/*/* /var/lib/polkit-1/localauthority/* /var/lib/polkit-1/localauthority/*/*
$(STAMP): LINKS=/lib /lib64 /var/run /var/tmp
$(STAMP): USE_DEV=y
