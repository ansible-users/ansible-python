[![Ansible Role](https://img.shields.io/ansible/role/19820.svg)][galaxy]
[![Ansible Role](https://img.shields.io/ansible/role/d/19820.svg)][galaxy]

# Introduction
Install python form [source].

# Requirements
* `ansible >= 2.0`


# Role Variables
* `version` : (e.g. `2.7.13`, `3.6.1`)
* `python_dir` :  The prefix directory. default: `/usr/local/opt/python{{ version }}`
* `reinstall`: Force the install whether or not python was installed.
* `link`: link the executable file of python and pip to the `/usr/local/bin/python{{ short_version }}`, `/usr/local/bin/pip{{ short_version }}`


# Example Playbook
```yaml
- hosts: servers
    roles:
    - { role: ansible-users.python, version: "2.7.13", checksum: "md5:53b43534153bb2a0363f08bae8b9d990" }
    - { role: ansible-users.python, version: "3.4.6",  checksum: "md5:3e42a7d46c850f76fe8d47ab306bd744" }
    - { role: ansible-users.python, version: "3.5.3",  checksum: "md5:57d1f8bfbabf4f2500273fb0706e6f21" }
    - { role: ansible-users.python, version: "3.6.1",  checksum: "md5:692b4fc3a2ba0d54d1495d4ead5b0b5c" }
```

Check the result.
```bash
# links
$ ls -hl /usr/local/bin/{python*,pip*}
[cupen@tank]$ ls -hl /usr/local/bin/{python*,pip*}
lrwxrwxrwx. 1 root root  /usr/local/bin/pip2.7 -> /usr/local/opt/python2.7.13/bin/pip2.7
lrwxrwxrwx. 1 root root  /usr/local/bin/pip3.4 -> /usr/local/opt/python3.4.6/bin/pip3.4
lrwxrwxrwx. 1 root root  /usr/local/bin/pip3.5 -> /usr/local/opt/python3.5.3/bin/pip3.5
lrwxrwxrwx. 1 root root  /usr/local/bin/pip3.6 -> /usr/local/opt/python3.6.1/bin/pip3.6
lrwxrwxrwx. 1 root root  /usr/local/bin/python2.7 -> /usr/local/opt/python2.7.13/bin/python2.7
lrwxrwxrwx. 1 root root  /usr/local/bin/python3.4 -> /usr/local/opt/python3.4.6/bin/python3.4
lrwxrwxrwx. 1 root root  /usr/local/bin/python3.5 -> /usr/local/opt/python3.5.3/bin/python3.5
lrwxrwxrwx. 1 root root  /usr/local/bin/python3.6 -> /usr/local/opt/python3.6.1/bin/python3.6


# install dir
[cupen@tank]$ ls -l /usr/local/opt/
drwxr-xr-x. 7 root root  python2.7.13
drwxr-xr-x. 6 root root  python3.4.6
drwxr-xr-x. 6 root root  python3.5.3
drwxr-xr-x. 6 root root  python3.6.1
```
Enjoy your work.


# License
WTFPL

```
DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
            Version 2, December 2004

Copyright (C) 2017-2018 cupen <xcupen@gmail.com>

Everyone is permitted to copy and distribute verbatim or modified
copies of this license document, and changing it is allowed as long
as the name is changed.

    DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

0. You just DO WHAT THE FUCK YOU WANT TO.
```

# Author Information

智慧与美貌的并重，英雄与侠义的化身！

[source]: https://www.python.org/downloads/
[galaxy]: https://galaxy.ansible.com/ansible-users/python/
