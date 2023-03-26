# Proxmox Template Automation Script

This Bash script automates the creation of a Proxmox VM template from a cloud image.

# Prerequisites

* Proxmox VE installation
* wget command-line tool installed
* Git installed
  
# Installation

1. Clone this repository to your proxmox server:
```bash
git clone https://github.com/retr090/proxmox-template.git
```

2. Change directory to the cloned repository:
```bash
cd proxmox-template
```

3. Make the install.sh script executable:
```bash
chmod +x proxmox-template.sh
```
4. Run the install.sh script:
```bash
 ./proxmox-template.sh
```
5. Enter a unique template ID when prompted.

6. Wait for the script to finish creating the template.

# Notes

* The script downloads the latest Ubuntu Focal Fossa cloud image from https://cloud-images.ubuntu.com/focal/current/.
* The template ID should be unique and not used by any existing templates.
* The script creates a VM with ID 8000 by default. If you need to change this, you can modify the script or pass the ID as an argument when running the script.
* The template creation process may take some time depending on your system resources and network speed.
* Once the template is created, it will be available for use in your Proxmox environment.

<a href="https://www.buymeacoffee.com/retr090"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a beer&emoji=🍺&slug=retr090&button_colour=FFDD00&font_colour=000000&font_family=Comic&outline_colour=000000&coffee_colour=ffffff" /></a>


