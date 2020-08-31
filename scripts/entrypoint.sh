#!/bin/bash

mkdir testdir
ls
cd playbooks
ansible-playbook playbook.yml --extra-vars "auth=$uth AWS_ACCESS_KEY_ID =$AWS_ACCESS_KEY_ID"
