#!/bin/bash
pip install boto3
pip install botocore
mkdir testdir
ls
cd playbooks
ansible-playbook playbook.yml --extra-vars "auth=$auth AWS_ACCESS_KEY_ID =$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY REGION=$REGION TESTSECRET=$TESTSECRET"
