[![Build Status - Master](https://travis-ci.org/juju4/ansible-kitchen.svg?branch=master)](https://travis-ci.org/juju4/ansible-kitchen)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-kitchen.svg?branch=devel)](https://travis-ci.org/juju4/ansible-kitchen/branches)
# kitchen ansible role

Ansible role to setup test-kitchen and plugins
http://kitchen.ci/

It only use available distribution ruby packages.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.0
 * 2.2
 * 2.5

### Operating systems

Tested on Ubuntu 14.04, 16.04 and 18.04
Kitchen and many plugins requires ruby 2.0 or more, so Ubuntu precise and Centos-6 are not supported. Some plugins may requires higher ruby version.
You can eventually use rvm to manage minimum requirements.

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.kitchen
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).

Once you ensured all necessary roles are present, You can test with:
```
$ cd /path/to/roles/juju4.kitchen
$ kitchen verify
$ kitchen login
```
or
```
$ cd /path/to/roles/juju4.kitchen/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues

* global gem install is not idempotent

## License

BSD 2-clause

