# Ansible

This repository contains an ansible playbook and its roles to configure new machines.  

## Dependencies

Run:

    make install

to install some dependencies from Ansible Galaxy

## Run playbook

To test the playbook, you can launch the Vagrant virtual machine:

    vagrant up

Then provision it with ansible:

    ansible-playbook --vault-password-file ~/.ansible_vault_pass -b vagrant.yml

Some variables are defined in an Ansible vault. Normal variables are referring to the encrypted
ones with a "vault_" prefix, as described by Ansible best practices.
