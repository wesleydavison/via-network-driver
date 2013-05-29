#
# Makefile for the VIA device drivers.
#

obj-$(CONFIG_VIA_RHINE) += via-rhine.o
obj-$(CONFIG_VIA_VELOCITY) += via-velocity.o

KVERSION = $(shell uname -r)
all:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
