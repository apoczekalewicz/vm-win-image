#!/bin/bash

. env.sh
sudo mkdir -p ${TEMP_ISO_DIR} ${TEMP_ISO_DIR}-rw
sudo mount ${ISOFILE_SRC} ${TEMP_ISO_DIR}
sudo cp -rp ${TEMP_ISO_DIR}/* ${TEMP_ISO_DIR}-rw/
sudo cp ${AUTOUNATTENDED_FILE} ${POSTINSTALL_FILE} ${TEMP_ISO_DIR}-rw/
sudo umount ${TEMP_ISO_DIR}
genisoimage -allow-limited-size -no-emul-boot -b boot/etfsboot.com   -boot-load-seg 0x07C0 -boot-load-size 8  -lJR -o ${ISOFILE_DEST} ${TEMP_ISO_DIR}-rw
sudo rm -rf ${TEMP_ISO_DIR} ${TEMP_ISO_DIR}-rw

