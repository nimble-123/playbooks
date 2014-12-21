
Ansible Playbooks
=================

Ansible Playbooks are suitable for provisioning and managing bare metal or virtual machines for different roles (e.g. development laptop, cloud VM container host images).

For provisioning application and service environments (e.g. running an API service, a CI installation, etc.), prefer container configuration specifications such as Docker instead.

Bootstrap
---------

These scripts are useful for getting a clean, vanilla machine to a state where it has Ansible and this collection of playbooks and roles so that one or more playbooks can be run to perform provisioning work.

* osx-bootstrap.sh

Playbooks
---------

* osx-dev - OSX development machine
* osx-ci - OSX Jenkins CI, prefer a Dockerized Jenkins on Linux over bare metal OSX box

Roles
-----

The following roles are used by the provided playbooks:

* osx-common
* osx-gui
* osx-ci

Usage
=====

To bootstrap a fresh OSX install, run the following:

    curl -s https://raw.githubusercontent.com/dghubble/playbooks/master/osx-bootstrap.sh | bash

to setup Homebrew, Ansible, and git, the minimal tools needed to run the osx-dev playbook to provision a development machine.
