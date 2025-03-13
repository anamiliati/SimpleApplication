#!/bin/bash

# Enable error handling
set -e

echo "Configuring SSH keys..."
mkdir -p ~/.ssh
chmod 700 ~/.ssh

# Create private key from CircleCI environment variable
echo "$PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

# Add the server key to known_hosts
echo "$SERVER_KEY" > ~/.ssh/known_hosts

echo "Deploying to the server..."
ssh -i ~/.ssh/id_rsa ana@34.245.108.72 "C:\Users\Ana\Desktop\CA_DEV\SimpleApplication && git pull origin main && npm starth"

