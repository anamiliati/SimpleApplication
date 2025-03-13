#!/bin/bash

# Enable error handling
set -e

echo "Configurando chaves SSH..."
mkdir -p ~/.ssh
chmod 700 ~/.ssh

# Create private and server key from CircleCI environment variable
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt

echo "Deploying to the server..."
ssh -i ~/.ssh/id_rsa ana@34.245.108.72 "C:\Users\Ana\Desktop\CA_DEV\SimpleApplication && git pull origin main && npm starth"
