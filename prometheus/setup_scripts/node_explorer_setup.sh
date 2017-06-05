#!/bin/bash

echo "downloading prometheus node_exporter-0.13.0.linux-amd64.tar.gz"

wget -c --wait=2 --tries=2 https://github.com/prometheus/node_exporter/releases/download/v0.13.0/node_exporter-0.13.0.linux-amd64.tar.gz

if [ ! -e node_exporter-0.13.0.linux-amd64.tar.gz ]; then
   echo "Cannot download https://github.com/prometheus/node_exporter/releases/download/v0.13.0/node_exporter-0.13.0.linux-amd64.tar.gz"
else
   tar -xf node_exporter-0.13.0.linux-amd64.tar.gz
   cd node_exporter-0.13.0.linux-amd64
   ./node_exporter &
fi


