# ansible-role-terragrunt

[![Build Status](https://travis-ci.com/diodonfrost/ansible-role-terragrunt.svg?branch=master)](https://travis-ci.com/diodonfrost/ansible-role-terragrunt)
[![molecule](https://github.com/diodonfrost/ansible-role-terragrunt/workflows/molecule/badge.svg)](https://github.com/diodonfrost/ansible-role-terragrunt/actions)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-diodonfrost.terragrunt-660198.svg)](https://galaxy.ansible.com/diodonfrost/terragrunt)

This role provide a compliance for install terragrunt on your target host.

## Requirements

This role was developed using Ansible 2.5 Backwards compatibility is not guaranteed.
Use `ansible-galaxy install diodonfrost.terragrunt` to install the role on your system.

Supported platforms:

```yaml
- name: EL
  versions:
    - 8
    - 7
    - 6
- name: Fedora
  versions:
    - 32
    - 31
    - 30
    - 29
    - 28
    - 27
    - 26
- name: Debian
  versions:
    - stretch
    - jessie
    - wheezy
    - squeeze
- name: Ubuntu
  versions:
    - disco
    - bionic
    - xenial
    - trusty
    - precise
- name: OracleLinux
  versions:
    - 7
    - 6
- name: Amazon
  versions:
    - 2017.12
    - 2016.03
    - 2013.09
- name: opensuse
  versions:
    - 42.3
    - 42.2
    - 42.1
    - 13.2
- name: SLES
  versions:
    - 15
- name: ArchLinux
  versions:
    - any
- name: Alpine
  versions:
    - any
- name: Gentoo
  versions:
    - stage3
- name: MacOSX
  versions:
    - 10.10
    - 10.11
    - 10.12
    - 10.13
- name: Windows
  versions:
    - 2016
    - 2012R2
    - 8.1
```

## Role Variables

This role has multiple variables. The defaults for all these variables are the following:

```yaml
---
# defaults file for ansible-role-terragrunt

# Define terragrunt version to install
# Possible values: https://api.github.com/repos/gruntwork-io/terragrunt/releases
# Default: latest
terragrunt_version: latest

# Define where to install Terragrunt binary
# Default: use local system path defined in Ansible vars/*.yml
terragrunt_path: "{{ terragrunt_default_path }}"
```

## Dependencies

None

## Example Playbook

This is a sample playbook file for deploying the Ansible Galaxy terragrunt role in a localhost and installing latest terragrunt version.

```yaml
---
- hosts: localhost
  become: true
  roles:
    - role: diodonfrost.terragrunt
```

This role can also install a specific version of terragrunt.

```yaml
---
- hosts: localhost
  become: true
  roles:
    - role: ansible-role-terragrunt
      vars:
        terragrunt_version: v0.18.0

```

## Local Testing

The preferred way of locally testing the role is to use Docker. You will have to install Docker on your system.

You can also use Virtualbox with molecule to run tests locally. You will have to install Virtualbox and Vagrant on your system. For all our tests we use molecule.

### Testing with Docker

```shell
# Test ansible role with centos-7
distribution=centos-7 molecule test

# Test ansible role with ubuntu-18.04
distribution=ubuntu-18.04 molecule test

# Create centos-7 instance
distribution=centos-7 molecule create

# Apply role on centos-7 instance
distribution=centos-7 molecule converge

# Launch tests on centos-7 instance
distribution=centos-7 molecule verify
```

### Testing with Vagrant and Virtualbox

```shell
# Test ansible role with Windows
molecule test -s windows
```

## License

Apache 2

## Author Information

This role was created in 2019 by diodonfrost.
