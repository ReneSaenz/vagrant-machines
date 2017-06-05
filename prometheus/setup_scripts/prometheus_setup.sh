#!/bin/bash

echo "downloading prometheus for linux..."

wget -c --wait=2 --tries=2 https://github.com/prometheus/prometheus/releases/download/v1.5.0/prometheus-1.5.0.linux-amd64.tar.gz

if [ ! -e prometheus-1.5.0.linux-amd64.tar.gz ]; then
    echo "could not download https://github.com/prometheus/prometheus/releases/download/v1.5.0/prometheus-1.5.0.linux-amd64.tar.gz"
else
   tar -xf prometheus-1.5.0.linux-amd64.tar.gz 
fi



