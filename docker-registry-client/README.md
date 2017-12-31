# Docker-registry-client

This role puts the docker registry certificate in /etc/docker/certs.d/.

## Role variables

- docker_registry_fqdn: the FQDN of the registry, i.e.: registry.yourdomain.com:5000
- docker_registry_cert: the registry certificate. This variable is the same as defined in the role docker-registry.

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - { role: docker-registry-client }
      vars:
        - docker_registry_fqdn: registry.yourdomain.com:5000
        - docker_registry_cert: "{{ vault_docker_registry_cert }}"

And create the vault, for instance in group_vars/all/:

    mkdir -p group_vars/all
    ansible-vault create group_vars/all/vault.yml

Containing:

    ---

    vault_docker_registry_cert: |
        -----BEGIN CERTIFICATE-----
        ...certificate content...
        -----END CERTIFICATE-----

## License

BSD

## Author Information

https://github.com/lefeverd
