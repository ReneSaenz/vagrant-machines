#!/bin/bash

# https://github.com/kubernetes/dashboard
# https://github.com/kubernetes/dashboard/tree/master/src/deploy

kubectl create -f kube-dashboard.depl.yml

kubectl create -f kube-dashboard-svc.yml
