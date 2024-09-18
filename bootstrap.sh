#!/bin/bash

# Function to handle errors
error_exit() {
  echo "$1" 1>&2
  exit 1
}

# Make sure the script is run as root
if [ "$EUID" -ne 0 ]; then
  error_exit "Please run as root."
fi

# Update and upgrade
echo "Updating package lists and upgrading packages..."
apt update && apt upgrade -y || error_exit "Failed to update and upgrade packages."

# Install Git
echo "Installing Git..."
apt install -y git || error_exit "Failed to install Git."

# Install Ansible (if required for playbook execution)
echo "Installing Ansible..."
apt install -y ansible || error_exit "Failed to install Ansible."

# Check if the directory exists, and if it does, remove it
PLAYBOOK_DIR=~/ansible-playbook
if [ -d "$PLAYBOOK_DIR" ]; then
  echo "Directory $PLAYBOOK_DIR already exists. Removing it..."
  rm -rf "$PLAYBOOK_DIR" || error_exit "Failed to remove existing directory $PLAYBOOK_DIR."
fi

# Clone the repository and run the Ansible playbook
echo "Cloning the Ansible playbook repository..."
git clone https://github.com/zenxedo/ansible-wsl2-bootstrap.git "$PLAYBOOK_DIR" || error_exit "Failed to clone the repository."

echo "Running the Ansible playbook..."
cd "$PLAYBOOK_DIR" || error_exit "Failed to change directory to the playbook folder."
ansible-playbook playbook.yml --ask-become-pass || error_exit "Failed to run the Ansible playbook."

# Remove the bootstrap script after execution
echo "Cleaning up the bootstrap script..."
rm -- "$0" || error_exit "Failed to remove the script."
