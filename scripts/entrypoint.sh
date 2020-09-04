#!/bin/bash
pip install boto3
pip install botocore
mkdir testdir
ls
cd playbooks
echo "-----------------------------------------------"
echo "TESTSECRET"
echo $TESTSECRET
echo "AWS_ACCESS_KEY_ID"
echo $AWS_ACCESS_KEY_ID
echo "AWS_SECRET_ACCESS_KEY"
echo $AWS_SECRET_ACCESS_KEY
echo "region"
echo $REGION
echo "nonsense"
echo $nonsense
ansible-playbook playbook.yml --extra-vars "auth=$auth AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY region=$REGION TESTSECRET=$TESTSECRET"
