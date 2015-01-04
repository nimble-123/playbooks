
# Ansible Playbooks

Ansible Playbooks are suitable for provisioning and managing bare metal or virtual machines for different roles (e.g. development laptop, cloud VM container hosts).

For provisioning application and service environments (e.g. running an API service, a CI installation, etc.), prefer container configuration specifications such as Docker instead.

## Bootstrap

These scripts are useful for getting a clean, vanilla machine to a state where it has Ansible and this collection of playbooks and roles so that one or more playbooks can be run to perform provisioning work.

* osx-bootstrap.sh

## Playbooks

* osx-dev - OSX development machine
* osx-ci - OSX Jenkins CI, prefer a Dockerized Jenkins on Linux over bare metal OSX box

## Roles

The following roles are used by the provided playbooks:

* osx-common
* osx-gui
* osx-host
* osx-ci

## Usage

To bootstrap an OSX machine to run playbooks, run:

    curl -s https://raw.githubusercontent.com/dghubble/playbooks/master/osx-bootstrap.sh | bash

This will ensure Homebrew is setup, Ansible is installed, a minimal git installation is available, and the latest playbooks sources have been fetched.

To provision an OSX development machine:

    cd ~/sources/playbooks
    ansible-playbook osx-dev.yml -i "localhost," -c local --skip-tags=sudo,secrets

Tags:

  * sudo - safe to skip these tasks unless a particular one is needed
  * secrets - skip these tasks unless the secrets volume has been loaded

Running the osx-dev.yml playbook without options executes several tasks
needing sudo permissions (labeled 'sudo') so add `--ask-sudo-pass`. The sudo
tasks only need to be run once so after that they can be skipped.

    # include sudo tasks
    ansible-playbook osx-dev.yml -i "localhost," -c local --ask-sudo-pass


To provision an OSX CI machine, run:

    ansible-playbook osx-ci.yml -i "localhost," -c local --ask-sudo-pass
