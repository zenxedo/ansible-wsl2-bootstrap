Ansible WSL2 Bootstrap
This repository contains an Ansible playbook and a bootstrap script for setting up a development environment in WSL2 (Windows Subsystem for Linux 2). The setup includes tools like Docker, Node.js, Python, and more.

## Requirements

- WSL2 installed on your Windows machine (preferably running Ubuntu).
- Internet connection to download packages and clone this repository.

## Quick Start (One-Liner)

To quickly bootstrap your WSL2 environment, simply run the following command in your WSL terminal:

```bash
bash <(curl -s https://raw.githubusercontent.com/zenxedo/ansible-wsl2-bootstrap/master/bootstrap.sh)
```

This will:

Update and upgrade your system packages.
Install Ansible.
Clone this repository.
Run the Ansible playbook to set up your development environment.
What Does the Bootstrap Script Do?
The bootstrap.sh script performs the following steps:

1. Installs Ansible if not already installed.
2. Clones this repository to your local WSL2 instance.
3. Executes the Ansible playbook (`playbook.yml`) to install and configure essential tools.

## Playbook Contents

The Ansible playbook (`playbook.yml`) automates the installation and configuration of:

Essential development tools: curl, git, wget, etc.
Python3 and pip
Node.js (LTS version) and npm
Docker and Docker Compose
Git configuration (with optional SSH key generation)
Zsh and Oh My Zsh
Usage
Once the bootstrap script has run, you can manually execute the Ansible playbook again (if needed) using:

```bash
cd ~/ansible-playbook
ansible-playbook playbook.yml --ask-become-pass
```

This will reapply any configurations or install any missing components.

## Contributing

Feel free to open issues or pull requests if you encounter any problems or want to add new features!

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
