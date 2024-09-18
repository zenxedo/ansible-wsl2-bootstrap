#!/bin/bash

# Step 1: Update system and install necessary dependencies
sudo apt update
sudo apt install -y git software-properties-common

# Step 2: Clone the repository
git clone https://github.com/zenxedo/ansible-wsl2-bootstrap.git

# Step 3: Navigate to the repository directory
cd ansible-wsl2-bootstrap

# Step 4: Add Ansible PPA and install Ansible
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

# Step 5: Run the Ansible playbook
ansible-playbook playbook.yml

# Step 6: Optional: Provide a success message after the playbook execution
echo "Ansible playbook executed successfully!"

