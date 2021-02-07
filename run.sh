#!/bin/env bash
minikube addons enable ingress
kubectl apply -f deployment.yml -f service.yml -f ingress.yml -f ingress_improve.yml