# Docker-registry

This will run a registry v2 container.

## Role variables

- docker_registry_path: defaults to /usr/local/docker-registry
- docker_registry_certs_path: defaults to /usr/local/docker-registry/certs
Certificates will be uploaded there and used by the registry.
- docker_registry_cert: the certificate
- docker_registry_key: the certificate's key

You should encrypt the docker_registry_cert and docker_registry_key in an encrypted ansible vault,
see [https://docs.ansible.com/ansible/2.4/vault.html](https://docs.ansible.com/ansible/2.4/vault.html).

## Documentation

[https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion](https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion)

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - { role: docker-registry }
      vars:
        - docker_registry_cert: "{{ vault_docker_registry_cert }}"
        - docker_registry_key: "{{ vault_docker_registry_key }}"

And create the vault, for instance in group_vars/all/:

    mkdir -p group_vars/all
    ansible-vault create group_vars/all/vault.yml

Containing:

    ---

    vault_docker_registry_cert: |
        -----BEGIN CERTIFICATE-----
        ...certificate content...
        -----END CERTIFICATE-----
    vault_docker_registry_key: |
        ----BEGIN RSA PRIVATE KEY-----
        ...key content...
        -----END RSA PRIVATE KEY-----

To generate the certificate and key:

    openssl req \
      -newkey rsa:4096 -nodes -sha256 -keyout certs/domain.key \
      -x509 -days 365 -out certs/domain.crt

## License

BSD

## Author Information

https://github.com/lefeverd
