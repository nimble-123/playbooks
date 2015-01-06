
# Ansible Playbooks

Ansible Playbooks are suitable for provisioning and managing bare metal or virtual machines for different roles (e.g. development laptop, cloud VM container hosts). For provisioning application or service environments (e.g. running an API service), prefer container configuration specifications, such as Docker.

## Usage

### OSX

#### Bootstrapping

First, bootstrap your OSX machine, which will install Homebrew, Ansible, and git. Then it will clone this repository of playbooks.

    curl -s https://raw.githubusercontent.com/dghubble/playbooks/master/osx-bootstrap.sh | bash

To perform one-time, elevated privilege tasks like removing boot sound effects and wiping the Dock, run the following and provide your password when prompted.

    cd ~/sources/playbooks
    ansible-playbook osx-once.yml -i "localhost," -c local --ask-sudo-pass

#### Provision/Update

To perform provisioning tasks or update a provisioned machine, run:

    cd ~/sources/playbooks
    ansible-playbook osx-dev.yml -i "localhost," -c local --skip-tags=secrets

Tags:

  * secrets - skip these tasks unless the secrets volume has been loaded

Running the osx-dev.yml playbook without options executes several tasks
needing sudo permissions (labeled 'sudo') so add `--ask-sudo-pass`. The sudo
tasks only need to be run once so after that they can be skipped.

    # include sudo tasks
    ansible-playbook osx-dev.yml -i "localhost," -c local --ask-sudo-pass

To provision an OSX CI machine, run:

    ansible-playbook osx-ci.yml -i "localhost," -c local --ask-sudo-pass

## Contents

### Bootstrappers

These scripts are useful for getting a clean machine to a state where it has Ansible and this collection of playbooks and their roles.

* debian-bootstrap.sh
* osx-bootstrap.sh

### Playbooks

* debian-dev - Debian development machine
* osx-dev - OSX development machine
* osx-ci - OSX Jenkins CI, prefer a Dockerized Jenkins on Linux over bare metal OSX box

### Roles

The following roles are used by the playbooks:

* osx-common
* osx-dev
* osx-gui
* osx-once
* osx-host
* osx-ci
