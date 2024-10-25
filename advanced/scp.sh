#!/bin/bash

# Set the Instance ID and path to the .env file
INSTANCE_ID="i-030da7d31a1dbbffc"

# Retrieve the public IP address of the specified EC2 instance
ipv4_address=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID --query 'Reservations[0].Instances[0].PublicIpAddress' --output text)