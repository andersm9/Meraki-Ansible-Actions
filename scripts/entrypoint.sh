#!/bin/bash
pip install boto3
pip install botocore
cd playbooks
ansible-playbook playbook.yml --extra-vars "auth=$auth AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY PSK=$PSK RTID=$RTID"
ping -c 1 bbc.co.uk
aws ssm get-command-invocation --command-id cbc8fe18-b75e-4b1b-b2bc-211601a2229b --region eu-west-1 --instance-id i-08793cba603e6ef4f
