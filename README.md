This project is a packer build file and associated Ansible playbooks 
to build a PanOS Utility VM on a local laptop.

Usage: packer build -on-error=abort utility_vm.json

Requirements are 
 - Packer https://www.packer.io/docs/
 - VMWare (tested on Fusion for Mac)
 - Ubuntu 16.04.4 ISO (it will be downloaded automatically if needed)

You can get help by opening an issue on github
