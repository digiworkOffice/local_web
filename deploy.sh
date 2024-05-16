#!/bin/bash

# Usage: ./deploy.sh <source_directory> <destination_directory>

# Source directory where the new deployment files are located
SOURCE_DIR="$1"

# Destination directory where the files will be deployed
DESTINATION_DIR="$2"

# Ensure both source and destination directories are provided
if [ -z "$SOURCE_DIR" ] || [ -z "$DESTINATION_DIR" ]; then
    echo "Usage: ./deploy.sh <source_directory> <destination_directory>"
    exit 1
fi

# Check if the PM2 process is running
PM2_STATUS=$(pm2 status | grep "api_expance")

if [ -n "$PM2_STATUS" ]; then
    # PM2 process is running, reload it
    pm2 reload api_frontend
else
    # PM2 process is not running, start it
    pm2 start server.js --name api_frontend
fi

# Define folders to exclude from deletion
EXCLUDE_FOLDERS=("uploads")

# Remove old files from the destination directory, excluding certain folders
for folder in "${EXCLUDE_FOLDERS[@]}"; do
    rm -rf "${DESTINATION_DIR:?}/${folder}"*
done

# Copy new files to the destination directory
cp -r "$SOURCE_DIR"/* "$DESTINATION_DIR"

echo "Deployment completed successfully"
