# Linux Kernel config files

Different *.config* file for compling Linux kernel.

## config-5.15.0-40-generic-default-ubuntu

This config file is the default config copied from */boot/*.
This config file **cannot** be used because of siging issue.

## config-5.15.0-40-without-sig

This config file generated with following steps:

- `make oldconfig`
- disabled *CONFIG_MODULE_SIG_KEY*
- changed *CONFIG_SYSTEM_TRUSTED_KEYS* to *""*

## config-5.15.0-40-md-driver-as-module

This conig file generated with following steps:
- change *CONFIG_BLK_DEV_MD* from *y* to *m*
- enabled *CONFIG_BCACHE_CLOSURES_DEBUG*
- enabled *CONFIG_DM_DEBUG*
