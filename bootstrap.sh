#!/bin/bash

# Ensure the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Step 1: Update system
echo "Updating the system..."
sudo apt update && sudo apt upgrade -y

# Step 2: Install Ansible
echo "Installing Ansible..."
sudo apt install -y ansible

# Step 3: Clone the Ansible playbook (optional: change repo URL to your actual repo)
echo "Cloning the Ansible playbook repository..."
if [ ! -d ~/ansible-playbook ]; then
  git clone https://github.com/zenxedo/ansible-wsl2-bootstrap.git ~/ansible-playbook
else
  echo "Playbook already exists, pulling latest changes..."
  cd ~/ansible-playbook
  git pull
fi

# Step 4: Run the Ansible playbook
echo "Running the Ansible playbook..."
cd ~/ansible-playbook
ansible-playbook playbook.yml --ask-become-pass

# Final message
echo "Bootstrap completed. WSL2 setup is ready."
