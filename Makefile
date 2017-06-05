.PHONY: install provision-vagrant

all: install

install:
	ansible-galaxy install -r requirements.yml

provision-vagrant:
	ansible-playbook --vault-password-file ~/.ansible_vault_pass -b vagrant.yml
