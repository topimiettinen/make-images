IMAGE:=systemd-networkd
STAMP:=$(call stampdir,$(IMAGE))
STAMPS+=$(STAMP)

$(STAMP): BINS=/usr/lib/systemd/systemd-networkd
$(STAMP): DIRS=/dev /proc /run /sys /tmp
$(STAMP): FILES=/etc/machine-id /etc/systemd/networkd.conf /etc/systemd/network/* /usr/lib/firmware/rtl_nic/rtl8168g-3.fw /usr/lib/systemd/network/*
$(STAMP): LINKS=/lib /lib64
$(STAMP): IMAGE_SIZE=50M
$(STAMP): USE_DEV=y
