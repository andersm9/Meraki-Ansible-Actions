#!/bin/bash
pip install boto3
pip install botocore
cd playbooks
ansible-playbook playbook.yml --extra-vars "auth=$auth AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY PSK=$PSK RTID=$RTID"
aws ssm send-command --document-name "AWS-RunPowerShellScript" --instance-ids "i-08793cba603e6ef4f" --region eu-west-1 --parameters commands='ping -c 2 bbc.co.uk'
