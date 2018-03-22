# ansible-dev-environment
Ansible playbook to setup quickly my dev environment.

Tested on Fedora.

## Usage instructions

``` bash
# Install ansible and a dependency
sudo dnf install ansible libselinux-python

# Clone this repo and change directory
git clone https://github.com/3615Yeye/ansible-dev-environment.git
cd ansible-dev-environment

# Start ansible configuration on local machine with a prompt for your sudo password (used for CLI tools installation)
ansible-playbook site.yml --ask-become-pass
```

