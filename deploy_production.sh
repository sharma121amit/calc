#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Variables
REPO_DIR="/home/ec2-user/calc"
IMAGE_NAME="your_dockerhub_username/flask_app"
TAG="latest"

echo "Starting deployment ..."

# Navigate to the repository directory
cd $REPO_DIR

# Pull the latest code from GitHub
echo "Pulling latest code from GitHub..."
git pull

# Bring down the Docker containers
echo "Stopping running containers..."
docker-compose down

# Build and start the Docker containers
echo "Building and starting containers..."
docker-compose up -d --build

echo "Deployment complete ..."