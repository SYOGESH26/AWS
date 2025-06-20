#!/bin/bash

aws ec2 create-key-pair \
        --key-name key \
        --query "keyMaterial" \
        --output text > key.pem

chmod 400 key.pem
