# Admin-User

This role is meant to be one of the first role to be executed on a machine.  
The tasks executed are:

- Change the root password (root_password variable)
- Create a new (sudoer) user (admin_username) with the specified password (admin_password).
- Adds the SSH keys (admin_ssh_authorized_keys) in the authorized keys.


## Role Variables

- root_password
- admin_username
- admin_password
- admin_ssh_authorized_keys (optional)

You should define these variables inside an encrypted ansible vault,
see [https://docs.ansible.com/ansible/2.4/vault.html](https://docs.ansible.com/ansible/2.4/vault.html).

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - { role: admin-user }
      vars:
        - root_password: "{{ vault_root_password }}"
        - admin_username: "{{ vault_admin_username }}"
        - admin_password : "{{ vault_admin_password }}"

And create the vault, for instance in group_vars/all/:

    mkdir -p group_vars/all
    ansible-vault create group_vars/all/vault.yml

Containing:

    ---

    vault_root_password: therootpassword
    vault_admin_username: yourusername
    vault_admin_password: yourpassword

## License

BSD

## Author Information

https://github.com/lefeverd
