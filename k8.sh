#!/bin/bash
kompose convert
kubectl apply -f database-service.yaml,fastapi-service.yaml,database-deployment.yaml,fastapi-deployment.yaml