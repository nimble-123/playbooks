
# Phoenix

Phoenix includes scripts and Ansible playbooks to provision a laptop or VM to be an acceptable development environment.

## Usage

### Fedora 23

Bootstrap the machine by installing Ansible and cloning Phoenix.

    curl -s https://raw.githubusercontent.com/dghubble/playbooks/master/init/fedora.sh | bash

Apply the configuration.

    cd ~/sources/phoenix/scripts/fedora
    sudo ./laptop.sh

See the [docs](https://www.dghubble.io/setup/fedora) to complete setup.

### OSX 10.11

Bootstrap the machine by installing Homebrew, Ansible, Git, and cloning Phoenix.

    curl -s https://raw.githubusercontent.com/dghubble/playbooks/master/init/osx.sh | bash

Apply the playbooks requiring elevated privileges (first time only!).

	cd ~/sources/playbooks
	ansible-playbook elevated-osx.yml -i local --ask-sudo-pass

Apply the osx playbook.

	cd ~/sources/playbooks
	ansible-playbook osx.yml -i local

### Debian/Ubuntu

Bootstrap the machine by installing Ansible, Git, and the playbooks.

    wget -O - https://raw.githubusercontent.com/dghubble/playbooks/master/init/debian.sh | bash

Apply the debian playbook.

    cd ~/sources/playbooks
    ansible-playbook debian.yml -i local --ask-sudo-pass

## Provisioning Profiles

* Fedora 23
    - Laptop
    - Vagrant VM
* OSX 10.11
    - Laptop
* Debian - Debian development machine (not used)

