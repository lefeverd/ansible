Logwatch
=========

Installs and configures logwatch


Role Variables
--------------

- logwatch_email: Email Address which Logwatch reports to. Defaults to root@localhost.
- logwatch_detail: The level of detail in the Logwatch report. Defaults to low.
- logwatch_range: The default time range for the Logwatch report. Defaults to "between -7 days and -1 days".
- logwatch_output: The output method of the Logwatch report. Defaults to "stdout".
- logwatch_format: The format of the Logwatch report. Defaults to "text".
- logwatch_cron_time: Cron special time specification nickname (must match with logwatch range). Defaults to "weekly".


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: logwatch }

License
-------

BSD

Author Information
------------------

https://github.com/lefeverd