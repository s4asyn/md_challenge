# SPDX-License-Identifier: GPL-2.0
#
# Makefile for the kernel software RAID and LVM drivers.
#

md-mod-y	+= md.o md-bitmap.o
linear-y	+= md-linear.o
multipath-y	+= md-multipath.o
faulty-y	+= md-faulty.o

# Note: link order is important.  All raid personalities
# and must come before md.o, as they each initialise 
# themselves, and md.o may use the personalities when it 
# auto-initialised.

obj-$(CONFIG_MD_CLUSTER)	+= md-cluster.o
obj-$(CONFIG_BLK_DEV_MD)	+= md-mod.o
ifeq ($(CONFIG_BLK_DEV_MD),y)
obj-y				+= md-autodetect.o
endif
