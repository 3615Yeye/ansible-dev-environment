# ansible-dev-environment
Ansible playbook to setup quickly my dev environment.

Tested on Pop! OS (Ubuntu based)

## Usage instructions

``` bash
# Install ansible
sudo apt install ansible

# Clone this repo and change directory
git clone https://github.com/3615Yeye/ansible-dev-environment.git
cd ansible-dev-environment

# Start ansible configuration on local machine with a prompt for your sudo password (used for CLI tools installation)
ansible-playbook dev-machine.yml --ask-become-pass
```

