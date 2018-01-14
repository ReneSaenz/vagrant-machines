#!/bin/bash


# Update
sudo yum -y update

sudo yum -y install kernel-devel kernel-headers

sudo yum -y install g++ gcc make
#sudo yum install gcc g++ make automake autoconf curl-devel openssl-devel zlib-devel httpd-devel apr-devel apr-util-devel sqlite-devel

# Update ruby
sudo yum install ruby
sudo yum install ruby-rdoc ruby-devel


# Install docker
#curl -fsSL https://get.docker.com/ | sh
#sudo service docker start


