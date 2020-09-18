#!/bin/bash
pip install boto3
pip install botocore
cd playbooks
ssh -i $SSH_KEY -J ubuntu@ec2-54-171-108-150.eu-west-1.compute.amazonaws.com
ansible-playbook playbook.yml --extra-vars "auth=$auth AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY PSK=$PSK RTID=$RTID SSH_KEY=$SSH_KEY"
echo ping 172.31.26.184
