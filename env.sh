# ISOS:
ISOFILE_SRC=/home/ap/vms/images/win2k19.iso # THIS IMAGE MUST EXISTS
ISOFILE_DEST=/home/ap/vms/images/win2k19-unatennded.iso # it will be created
ISOFILE_VIRTIO=/home/ap/vms/images/virtio-win.iso # THIS IMAGE MUST EXISTS - from virtio-win package default path is /usr/share/virtio-win/virtio-win.iso

# Automation:
AUTOUNATTENDED_FILE=./files/autounattend.xml
POSTINSTALL_FILE=./files/post-install.ps1

# Result IMAGE settings:
RESULT_IMAGE=/home/ap/vms/images/win2k19.qcow                # Destination image
IMAGE_SIZE=12G


# Not so important env ;)
TEMP_ISO_DIR=/tmp/temp
OS_VARIANT=win2k19
VM_NAME=wintmp # temporary name of vm (on build stage)

WORKDIR=$( dirname $RESULT_IMAGE )

