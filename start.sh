#!/bin/bash
skip_tags=""
if [ -z "$skip_tags" ]; then
   skip_tags="--skip-tags $1"
fi

ANSIBLE_CONFIG=ansible.cfg   ansible-playbook -v site.yml -i inventory.yml  $skip_tags -e 'ansible_python_interpreter=/usr/bin/python3'

echo "$skip_tags"