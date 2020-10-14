#!/bin/bash
pip install boto3
pip install botocore
cd playbooks
ansible-playbook playbook.yml --extra-vars "auth=$auth AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY PSK=$PSK RTID=$RTID"
cmdid=$(aws ssm send-command --document-name "AWS-RunPowerShellScript" --instance-ids "i-0b8d9c6ca369c6e34" --region eu-west-1 --parameters commands='ping -c 2 bbc.co.uk' --query "Command.CommandId" --output text)
#output=$(aws ssm list-command-invocations --command-id "$cmdid" --details --query "CommandInvocations[*].CommandPlugins[*].Output[]" --output text --region eu-west-1 --instance-id i-0b8d9c6ca369c6e34)
output=(aws ssm list-command-invocations --command-id "$cmdid" --details --query "CommandInvocations[*].CommandPlugins[*].Output[]" --output text --region eu-west-1 --instance-id i-0b8d9c6ca369c6e34)
a = 1
echo "a ="
echo a
echo "$a =" 
echo $a
echo $output
echo $RTID
echo "end of entrypoint.sh"
