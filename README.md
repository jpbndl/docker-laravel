# laravel-docker-file
Host your laravel app using this dockerfile

## Overview
**Dockerfile** - builds PHP environment with necessary dependencies for the application. 
**docker-compose.yaml** - defines the services for the app tier and db tier

# Running the Setup

## Prerequisites
1. Install **Docker** and **Docker Compose**.
   - Follow the [Docker Installation Guide](https://docs.docker.com/get-docker/) for your platform.
   - Follow the [Docker Compose Installation Guide](https://docs.docker.com/compose/install/) if Docker Compose isn't bundled with Docker.

---

## Steps to Build and Start the Services
1. Build and start the services:
   ```bash
   docker compose up
