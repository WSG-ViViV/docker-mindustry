#!/bin/bash
# COMPOSE_PROJECT_NAME should be a unique string for this deployment. Otherwise, if you run multiple deployments, docker-compose down may take down a previous deployment with the same COMPOSE_PROJECT_NAME or parent folder name

COMPOSE_PROJECT_NAME=mindustry-server

docker-compose down
docker-compose up -d
