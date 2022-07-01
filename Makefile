KERNEL_SOURCE_DIR := /lib/modules/5.15.0-40-generic/build

all: modules

clean modules modules_install:
	make -C $(KERNEL_SOURCE_DIR) M=$(PWD)/md $@
