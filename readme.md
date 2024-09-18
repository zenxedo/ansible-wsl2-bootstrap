# Ansible WSL2 Bootstrap

This repository contains an Ansible playbook and a bootstrap script for setting up a basic development environment in WSL2 (Windows Subsystem for Linux 2). The setup includes essential tools like Docker, Python, Zsh, and a few additional utilities.

## Requirements

- WSL2 installed on your Windows machine (preferably running Ubuntu).
- Internet connection to download packages and clone this repository.

## Quick Start (One-Liner)

To quickly bootstrap your WSL2 environment, simply run the following command in your WSL terminal:

```bash
bash <(curl -s https://raw.githubusercontent.com/zenxedo/ansible-wsl2-bootstrap/master/bootstrap.sh)
```

This will:

1. Update and upgrade your system packages.
2. Install Ansible.
3. Clone this repository.
4. Run the Ansible playbook to set up your development environment.

## Configuration: `vars.yml`

To control the functionality of the playbook, all you need to do is modify the `vars.yml` file. This file contains variables that define which packages and tools will be installed during the setup process.

### Example Configuration in `vars.yml`

```yaml
install_python: true        # Set to true to install Python, false to skip
install_docker: true        # Set to true to install Docker, false to skip
install_zsh: true           # Set to true to install Zsh, false to skip
install_dev_tools: true     # Set to true to install additional development tools
```

By toggling these values between `true` or `false`, you can control which components of the setup get installed. This allows for flexibility depending on your development needs.

## What Does the Bootstrap Script Do?

The `bootstrap.sh` script performs the following steps:

1. Installs Ansible if not already installed.
2. Clones this repository to your local WSL2 instance.
3. Executes the Ansible playbook (`playbook.yml`) to install and configure essential tools.

## Playbook Contents

The Ansible playbook (`playbook.yml`) automates the installation and configuration of:

- **Essential Development Tools**: 
  - `curl`, `wget`, `git`, `build-essential`, `ca-certificates`, etc.
  
- **Python 3 and pip**:
  - Installs Python 3, `pip` (Python package manager), and `virtualenv`.

- **Docker**:
  - Installs Docker CE, Docker CLI, `containerd.io`, and Docker Compose.

- **Zsh**:
  - Installs the Z Shell and `fonts-powerline` for better terminal experience.

- **Additional Development Tools**:
  - Installs `vim` (text editor) and `tmux` (terminal multiplexer).

## Usage

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
