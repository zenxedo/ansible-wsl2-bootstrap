#!/bin/bash

# Make sure the script is run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Update and upgrade
echo "Updating package lists and upgrading packages..."
apt update && apt upgrade -y

# Install essential tools
echo "Installing essential tools..."
apt install -y curl wget git build-essential ca-certificates apt-transport-https software-properties-common gnupg2

# Install Ansible (if required for playbook execution)
echo "Installing Ansible..."
apt install -y ansible

# Clone the repository and run the Ansible playbook
echo "Cloning the Ansible playbook repository..."
git clone https://github.com/zenxedo/ansible-wsl2-bootstrap.git ~/ansible-playbook

echo "Running the Ansible playbook..."
cd ~/ansible-playbook
ansible-playbook playbook.yml --ask-become-pass

# Remove the bootstrap script after execution
echo "Cleaning up the bootstrap script..."
rm -- "$0"

