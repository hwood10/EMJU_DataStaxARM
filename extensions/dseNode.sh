#!/bin/bash

echo "Installing Java"
add-apt-repository -y ppa:webupd8team/java
apt-get -y update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
apt-get -y install oracle-java8-installer

echo "Partitioning and formatting all attached data disks"
bash vm-disk-utils-0.1.sh

echo "Modifying permissions"
chmod 777 /mnt

