.PHONY: install provision-vagrant provision-vpn provision-hstore

all: install

install:
	ansible-galaxy install -r requirements.yml

provision-vagrant:
	ansible-playbook --vault-password-file ~/.ansible_vault_pass -b vagrant.yml

provision-vps:
	ansible-playbook --ask-become-pass --vault-password-file ~/.ansible_vault_pass -b vps.yml

provision-hstore:
	ansible-playbook --vault-password-file ~/.ansible_vault_pass -b hstore.yml
