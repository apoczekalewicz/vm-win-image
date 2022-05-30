# vm-win-image

## Usage:
git clone https://github.com/apoczekalewicz/vm-win-image

vim env.sh # iso paths, image settings

./01_create_unattended_iso.sh # create unattended_iso

./02_create_image.sh # create win qcow2 image


## Info:
Additional software:
- Guest Agent
- Qemu Tools (Drivers)
- Cloudinit

Services:
- RDP - enabled
- SSH - enabled
- Firewall - disabled

Other:
- RH certs - imported
