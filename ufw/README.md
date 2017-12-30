SSH-Hardening
==============

Configures UFW.

Role Variables
--------------

ufw_allow_ports: list of ports to be allowed. Defaults to 22, 2222, 80, 443.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: ufw }

License
-------

BSD

Author Information
------------------

https://github.com/lefeverd
