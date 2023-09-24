# Ansible Cheat Sheet<img align="left" width="30px" src="../images/icons/ansible-icon.png" style="padding-right:10px;" /> 

## Inventory Commands

Inventory Command | Description
--- | ---
`ansible-inventory --list` | Show a list of all hosts in the inventory
`ansible-inventory --host "myhost"` | Show variables for a single host
`ansible-inventory --graph` | Show a graph of the inventory
`ansible-inventory --inventory-file myinventory.ini` | Use the specified inventory file
`ansible-inventory --export --output myinventory.json` | Export inventory to a JSON file

## Ad Hoc Exmaples

Command | Description
--- | ---
`ansible all -m ping` | Test connection to all hosts in inventory
`ansible all -m command -a "df -h"` | Run "df -h" command on all hosts in inventory
`ansible all -m setup` | Gather facts on all hosts in inventory
`ansible myhostgroup -m copy -a "src=myfile.txt dest=/tmp/myfile.txt"` | Copy "myfile.txt" to "/tmp/myfile.txt" on all hosts in "myhostgroup"
`ansible myhostgroup -m file -a "state=absent path=/tmp/myfile.txt"` | Ensure "/tmp/myfile.txt" is absent on all hosts in "myhostgroup"
`ansible myhostgroup -m service -a "name=httpd state=restarted"` | Restart the "httpd" service on all hosts in "myhostgroup"

## Popular Modules
Module | Description | Example Command
--- | --- | ---
`ping` | Test connection to hosts | `ansible all -m ping`
`command` | Execute commands on remote hosts | `ansible all -m command -a "df -h"`
`setup` | Gather facts about remote hosts | `ansible all -m setup`
`copy` | Copy files to remote hosts | `ansible myhostgroup -m copy -a "src=myfile.txt dest=/tmp/myfile.txt"`
`file` | Manage files on remote hosts | `ansible myhostgroup -m file -a "state=absent path=/tmp/myfile.txt"`
`service` | Manage services on remote hosts | `ansible myhostgroup -m service -a "name=httpd state=restarted"`
`apt` | Manage packages on Debian-based systems | `ansible myhostgroup -m apt -a "name=nginx state=latest"`
`yum` | Manage packages on Red Hat-based systems | `ansible myhostgroup -m yum -a "name=httpd state=latest"`
`cron` | Manage cron jobs on remote hosts | `ansible myhostgroup -m cron -a "name='Job Name' job='* * * * * echo hello world' state=present"`
`debug` | Print statements during execution | `ansible myhostgroup -m debug -a "msg='This is a debug message'"`
`user` | Manage user accounts on remote host | `ansible myhostgroup -m user -a "name=myuser state=present"`

## Playbook Commands
Playbook Command | Description
--- | ---
`ansible-playbook myplaybook.yml` | Run the playbook "myplaybook.yml"
`ansible-playbook myplaybook.yml --tags "tagname"` | Run only the tasks with tag "tagname" in "myplaybook.yml"
`ansible-playbook myplaybook.yml --limit "myhostgroup"` | Run the playbook "myplaybook.yml" on only the hosts in "myhostgroup"
`ansible-playbook myplaybook.yml --ask-become-pass` | Prompt for privilege escalation password before running the playbook
