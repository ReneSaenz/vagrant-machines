#!/bin/bash

# remove previously generated certificates
rm -f certs_generated/*

## generate CA
sh cert_scripts/gen-ca.sh

## generate admin client certificate
sh cert_scripts/gen-admin-cert.sh

## generate kube-proxy certificate
sh cert_scripts/gen-kube-proxy-cert.sh

## generate kubernetes certificate
sh cert_scripts/gen-kubernetes-cert.sh

## delete previously generates kubeconfig files
rm -f authentication/bootstrap.kubeconfig
rm -f authentication/kube-proxy.kubeconfig

## generate kubeconfig files
sh authentication/gen-kubeconfig.sh
sh authentication/gen-kube-proxy-kubeconfig.sh
