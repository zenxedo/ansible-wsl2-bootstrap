# Ansible WSL2 Bootstrap

This playbook sets up a basic development environment in WSL2, installing essential packages like Docker, Python, and more.

## Quick Setup

Run the following command in your WSL terminal to download and run the bootstrap script:

```bash
curl -s https://raw.githubusercontent.com/zenxedo/ansible-wsl2-bootstrap/master/bootstrap.sh -o bootstrap.sh && sudo bash bootstrap.sh
```

## What It Does

1. **Installs essential packages** like `curl` and `wget`.
2. **Optionally installs Python** (`python3`, `pip`, `venv`).
3. **Optionally installs Docker** (`docker-ce`, `docker-compose`, etc.).

## Customization

To control what the playbook installs, edit the variables in `playbook.yml`:

```yaml
install_python: true  # Set to false to skip Python installation
install_docker: true  # Set to false to skip Docker installation
```

## Running the Playbook

If you've already downloaded the playbook, you can run it manually after executing the bootstrap script.

## License

Licensed under the MIT License.
