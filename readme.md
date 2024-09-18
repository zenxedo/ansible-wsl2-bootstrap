# Ansible WSL2 Bootstrap

This playbook sets up a basic development environment in WSL2, installing essential packages like Docker, Python, and more.

## Quick Setup

Run the following command in your WSL terminal to download and run the playbook:

```bash
curl -s https://raw.githubusercontent.com/zenxedo/ansible-wsl2-bootstrap/master/bootstrap.yml -o bootstrap.yml && sudo ansible-playbook bootstrap.yml --ask-become-pass
```

## What It Does

1. **Installs essential packages** like `curl` and `wget`.
2. **Optionally installs Python** (`python3`, `pip`, `venv`).
3. **Optionally installs Docker** (`docker-ce`, `docker-compose`, etc.).

## Customization

To control what the playbook installs, edit the variables in `bootstrap.yml`:

```yaml
install_python: true  # Set to false to skip Python installation
install_docker: true  # Set to false to skip Docker installation
```

## Running the Playbook

If you've already downloaded the playbook, run it manually with:

```bash
sudo ansible-playbook bootstrap.yml --ask-become-pass
```

## License

Licensed under the MIT License.
