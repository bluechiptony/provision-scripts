#!/bin/bash

#docker 
echo "Installing mongo DB" &&
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add - &&
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list &&
sudo apt update &&
sudo apt install mongodb-org &&
echo "Installing mongo DB" &&
echo "Starting service mongo DB" &&
sudo systemctl start mongod.service &&
sudo systemctl enable mongod 
echo "Showing service mongo DB status" &&
sudo systemctl status mongod

