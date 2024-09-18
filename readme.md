# Ansible WSL2 Bootstrap

Set up a development environment in WSL2 with tools like Docker, Python, and Zsh. Optionally, fetch existing SSH keys from another machine.

## Quick Setup

Run this command in your WSL terminal to download and execute the bootstrap script:

```bash
curl -s https://raw.githubusercontent.com/zenxedo/ansible-wsl2-bootstrap/master/bootstrap.sh -o bootstrap.sh && sudo chmod +x bootstrap.sh && sudo ./bootstrap.sh
```

## Configuration

Edit `vars.yml` to customize the setup:

```yaml
# Fetch SSH keys from another machine (set to true if needed)
fetch_ssh_keys: true
remote_machine_ip: "your_remote_machine_ip_or_hostname"

# Other options
install_python: true
install_docker: true
install_zsh: true
install_dev_tools: true
```

## Running the Playbook

```bash
ansible-playbook main_playbook.yml --ask-become-pass
```

## License

Licensed under the MIT License.
