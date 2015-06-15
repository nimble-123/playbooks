
# Command Line Provisioning

These Ansible playbooks provision a fresh laptop or VM to be an acceptable development environment. For application or service specific development environments, prefer container specifications such as Docker or rkt.

## Usage

### Debian/Ubuntu

Bootstrap the machine by installing Ansible, Git, and the playbooks.

    wget -O - https://raw.githubusercontent.com/dghubble/playbooks/master/init/debian.sh | bash

Apply the debian playbook.

    cd ~/sources/playbooks
    ansible-playbook debian.yml -i local --ask-sudo-pass 

### OSX

Bootstrap the machine by installing Homebrew, Ansible, Git, and the playbooks.

    curl -s https://raw.githubusercontent.com/dghubble/playbooks/master/init/osx.sh | bash

Apply the playbooks requiring elevated privileges (first time only!).

	cd ~/sources/playbooks
	ansible-playbook elevated/osx.yml -i local --ask-sudo-pass

Apply the osx playbook.

	cd ~/sources/playbooks
	ansible-playbook osx.yml -i local

## Playbooks

* debian - Debian development machine
* osx - OSX development machine

## Roles

* debian/dotfiles
* debian/editors
* debian/secrets
* osx/update
* osx/system
* osx/secrets
* osx/dev
* osx/dotfiles
* osx/apps
