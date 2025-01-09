# laravel-docker-file
Host your laravel app using this dockerfile

## Overview
**Dockerfile** - builds PHP environment with necessary dependencies for the application. 
**docker-compose.yaml** - defines the services for the app tier and db tier

## Running the setup
Install Docker and Docker Compose
Build and start the service
docker compose up
Verifying the setup
Check if the app is running on http://localhost:8000
Check db connection using the credentials in docker-compose.yaml and use the host 0.0.0.0
Stop the services
docker compose down
