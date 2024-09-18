# Ansible WSL2 Bootstrap

This repository contains an Ansible playbook to set up Python and Docker on an Ubuntu-based WSL2 environment. It automates the installation of Python3, Docker, and all the necessary dependencies.

## Quick Start

To quickly set up this environment, run the following one-liner in your terminal:

```bash
curl -s https://raw.githubusercontent.com/zenxedo/ansible-wsl2-bootstrap/master/bootstrap.sh -o bootstrap.sh && sudo bash bootstrap.sh
```

This will:

- Download and execute the `bootstrap.sh` script, which clones this repository.
- Install Ansible and run the included playbook to set up Python, Docker, and other required dependencies.

## What this playbook does

The Ansible playbook in this repository performs the following tasks:

- Updates and upgrades the system packages.
- Installs Python3 and pip.
- Installs Docker along with its dependencies.
- Adds the current user to the Docker group to enable running Docker commands without `sudo`.
- Ensures Docker is started and enabled on boot.
- Installs the Docker Python module to manage Docker containers through Python.
- Verifies Docker installation by displaying the installed Docker version.

## Prerequisites

- Ubuntu WSL2 environment (or Ubuntu-based system).
- `curl` should be installed to use the one-liner.

