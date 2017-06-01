[![Ansible Role](https://img.shields.io/ansible/role/18027.svg)](https://galaxy.ansible.com/cupen/python/)

Python
=========

Install python form source.

Requirements
------------

* ansible


Role Variables
--------------

* version
* python_dir   It's the prefix directory. default: "/usr/local/opt/python{{ version }}"


Example Playbook
----------------

    - hosts: servers
      roles:
        - { role: cupen.python, version: "2.7.13", checksum: "md5:53b43534153bb2a0363f08bae8b9d990" }
        - { role: cupen.python, version: "3.4.6",  checksum: "md5:3e42a7d46c850f76fe8d47ab306bd744" }
        - { role: cupen.python, version: "3.5.3",  checksum: "md5:57d1f8bfbabf4f2500273fb0706e6f21" }
        - { role: cupen.python, version: "3.6.1",  checksum: "md5:692b4fc3a2ba0d54d1495d4ead5b0b5c" }


Check the result
----------------

```
# links.
$ ls -hl /usr/local/bin/{python*,pip*}
--- /usr/local/bin/pip2.7 -> /usr/local/opt//bin/pip2.7
--- /usr/local/bin/pip3.4 -> /usr/local/opt//bin/pip3.4
--- /usr/local/bin/pip3.5 -> /usr/local/opt//bin/pip3.5
--- /usr/local/bin/pip3.6 -> /usr/local/opt/python3.6.1/bin/pip3.6
--- /usr/local/bin/python2.7 -> /usr/local/opt/python2.7.13/bin/python2.7
--- /usr/local/bin/python3.4 -> /usr/local/opt/python3.4.6/bin/python3.4
--- /usr/local/bin/python3.5 -> /usr/local/opt/python3.5.3/bin/python3.5
--- /usr/local/bin/python3.6 -> /usr/local/opt/python3.6.1/bin/python3.6

# install dir.
$ ls -hl /usr/local/opt/
--- python2.7.13
--- python3.4.6
--- python3.5.3
--- python3.6.1
```


License
-------

MIT


Author Information
------------------

cupen<cupen@foxmail.com>
