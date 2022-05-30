#!/bin/bash

. env.sh

# Create workdir and qcow2 image
sudo mkdir -p ${WORKDIR}
sudo setfacl -m u:qemu:rx ${WORKDIR}
sudo rm -f ${RESULT_IMAGE}
qemu-img create -f qcow2 ${RESULT_IMAGE} ${IMAGE_SIZE}


# Install Win
virt-install  \
                  --name ${VM_NAME} --ram 2048 --vcpus 2 \
                  --network model=virtio,type=user \
                  --disk path=${RESULT_IMAGE},format=qcow2,device=disk,bus=virtio \
                  --cdrom ${ISOFILE_DEST} \
                  --disk path=${ISOFILE_VIRTIO},device=cdrom \
                  --vnc --os-type windows --os-variant ${OS_VARIANT}

# Clean
virsh undefine ${VM_NAME}
rm -rf ${ISOFILE_DEST}
