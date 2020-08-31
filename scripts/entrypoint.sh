#!/bin/bash

mkdir testdir
ls
cd playbooks
ansible-playbook playbook.yml --extra-vars "auth=$auth"

