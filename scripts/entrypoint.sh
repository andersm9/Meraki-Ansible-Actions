#!/bin/bash

mkdir testdir
ls
cd playbooks
ansible-playbook playbook.yml --extra-vars "auth=$auth AWS_ACCESS_KEY_ID =$WS_ACCESS_KEY_ID"
