#!/bin/bash

#Create Security group

aws ec2 create-security-group \
        --group-name security \
        --description "Allow SSH"

#Allow port 22

aws ec2 authorize-security-group-ingress \
        --group-name security \
        --protocol tcp \
        --port 22 \
        --cidr 0.0.0.0/0

#deny port 80

aws ec2 authorize-security-group-egress \
        --group-name security \
        --protocol tcp \
        --port 80 \
        --cidr 0.0.0.0/0
