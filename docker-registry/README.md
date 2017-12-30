# Docker-registry

This will run a registry v2 container.  
You need to first generate self-signed certificates, using the correct domain as FQDN (i.e. registry.yourdomain.com):

    openssl req \
      -newkey rsa:4096 -nodes -sha256 -keyout certs/domain.key \
      -x509 -days 365 -out certs/domain.crt

Then put the certificates in a vault file, under the variable names vault_docker_registry_cert and vault_docker_registry_key:

    # Create or edit it:
    ansible-vault --vault-password-file=~/.ansible_vault_pass create vault.yml
    ansible-vault --vault-password-file=~/.ansible_vault_pass edit vault.yml

Then you can setup the docker client or use the docker-registry-client role.

You can put the vault anywhere you want and use it as extra-vars:

    ansible-playbook --extra-vars @vault.yml --vault-password-file ~/.ansible_vault_pass -b yourplaybook.yml

Or you can put it in group_vars/all and it will be automatically picked up.
