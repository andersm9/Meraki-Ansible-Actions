#!/bin/bash
pip install boto3
pip install botocore
cd playbooks
ansible-playbook playbook.yml --extra-vars "auth=$auth AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY PSK=$PSK RTID=$RTID AWS_REGION=$AWS_REGION"
