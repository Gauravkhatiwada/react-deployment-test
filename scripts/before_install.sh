#!/bin/bash

# Change Working Directory
cd /home/ec2-user/server

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc

# Install the latest LTS version of Node.js
nvm install --lts

# Verify Node.js installation
node -e "console.log('Running Node.js ' + process.version)"

# Install PM2 globally
npm install pm2@latest -g
