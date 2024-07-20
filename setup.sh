#!/bin/bash

# Update package lists and install Node.js and npm
sudo apt update
sudo apt install -y nodejs npm

# Create client directories and files
mkdir -p client/public client/src
touch client/public/index.html
touch client/src/App.js client/src/index.js
touch client/package.json

# Create server directories and files
mkdir -p server/routes
touch server/routes/api.js
touch server/app.js
touch server/.env
touch server/package.json

# Create Dockerfile and README
touch Dockerfile
touch README.md

# Initialize npm in client and server directories and install dependencies
cd client
npm init -y
npm install react react-dom @azure/msal-browser @azure/msal-react axios

cd ../server
npm init -y
npm install express axios dotenv passport passport-azure-ad

cd ..

echo "Directory structure, files, and npm packages created successfully."

# chmod +x setup.sh
# ./setup.sh
