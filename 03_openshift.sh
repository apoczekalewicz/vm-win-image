#!/bin/bash

. env.sh

METRIC=$( echo ${IMAGE_SIZE} | rev | cut -c1 )
SIZE=$( echo ${IMAGE_SIZE} | rev | cut -c2- | rev)
let SIZE++


# In this command, we are using the "win2k19" as the image name. 
# This name is taken from the image templates mentioned in https://github.com/kubevirt/common-templates
echo virtctl image-upload pvc win2k19 --image-path=${RESULT_IMAGE} --size ${SIZE}${METRIC} --namespace openshift-virtualization-os-images --insecure
