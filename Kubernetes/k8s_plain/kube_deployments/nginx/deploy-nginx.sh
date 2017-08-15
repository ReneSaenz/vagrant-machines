#!/bin/bash

kubectl create -f namespace.yml

kubectl create -f nginx-dep.yml --namespace=web

kubectl create -f nginx-svc.yml --namespace=web
