#!/bin/bash
pip install boto3
mkdir testdir
ls
cd playbooks
ansible-playbook playbook.yml --extra-vars "auth=$auth AWS_ACCESS_KEY_ID =$AWS_ACCESS_KEY_ID"
