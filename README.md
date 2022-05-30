# vm-win-image

## Usage:
git clone https://github.com/apoczekalewicz/vm-win-image

vim env.sh # iso paths, image settings

./01_create_unattended_iso.sh # create unattended_iso

./02_create_image.sh # create win qcow2 image


## Info:
- Import RH Certs
- Install Guest Agent
- Install Qemu Tools (Drivers)
- Install CloudInit
- Enable RDP
- Enable SSH
- Disable firewall

