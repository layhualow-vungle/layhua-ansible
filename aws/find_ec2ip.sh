#!/bin/bash
# print IP address of instances based on tag name
IP="$(aws ec2 describe-instances \
  --filter 'Name=tag:Name,Values=prod-local-mongo-3.6*' 'Name=instance-state-name,Values=running' \
  --query '[Reservations[*].Instances[*].PrivateIpAddress]' --output text)"
echo $IP
