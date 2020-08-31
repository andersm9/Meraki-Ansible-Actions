#!/bin/bash
pip install boto3
pip install botocore
mkdir testdir
ls
cd playbooks
ansible-playbook playbook.yml --extra-vars "auth=$auth AWS_ACCESS_KEY_ID =$AWS_ACCESS_KEY_ID AWS_DEFAULT_REGION=eu-west-1"
