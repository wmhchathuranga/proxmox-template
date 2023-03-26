#!/bin/bash

echo "Enter the template ID: "
read template_id

echo "Downloading Ubuntu Focal image..."
wget https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img

echo "Creating virtual machine..."
qm create $template_id --memory 2048 --cores 2 --name ubuntu-cloud --net0 virtio,bridge=vmbr0

echo "Importing disk..."
qm importdisk $template_id focal-server-cloudimg-amd64.img local-zfs

echo "Setting SCSI controller..."
qm set $template_id --scsihw virtio-scsi-pci --scsi0 local-zfs:vm-$template_id-disk-0

echo "Setting cloud-init disk..."
qm set $template_id --ide2 local-zfs:cloudinit

echo "Setting boot disk..."
qm set $template_id --boot c --bootdisk scsi0

echo "Setting serial console..."
qm set $template_id --serial0 socket --vga serial0

echo "Converting to template..."
qm template $template_id

echo "Proxmox template creation complete!"

