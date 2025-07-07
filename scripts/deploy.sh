#!/bin/bash

echo "Starting deployment..."
echo "App Name: $APP_NAME"
echo "Target Environment: $ENVIRONMENT"

if [ "$ENVIRONMENT" = "production" ]; then
  echo "Deploying to PRODUCTION!"
else
  echo "Deploying to $ENVIRONMENT environment"
fi

echo "Deployment finished."
