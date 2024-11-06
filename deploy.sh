#!/bin/bash

# Check for the environment argument (staging or production)
if [ "$1" == "staging" ]; then
    SERVER="staging.example.com"
    TARGET_DIR="/var/www/staging"
elif [ "$1" == "production" ]; then
    SERVER="production.example.com"
    TARGET_DIR="/var/www/production"
else
    echo "Invalid environment. Use 'staging' or 'production'."
    exit 1
fi

# Simulate deployment by copying files and restarting services
echo "Deploying to $SERVER..."

# This is where you'd actually deploy your code (e.g., via scp or rsync)
# For now, we'll just simulate by printing out the deploy actions.
echo "Copying files to $SERVER:$TARGET_DIR"
echo "Restarting web server on $SERVER"

# Deployment is complete
echo "Deployment to $SERVER completed successfully!"
