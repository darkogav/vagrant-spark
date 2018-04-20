#!/usr/bin/env bash

echo "Setting up vagrant image for Spark master"
echo -e "192.168.50.11\tspark-master-priv\n192.168.50.12\tspark-slave-priv\n" >> /etc/hosts
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm >>/tmp/setup.log 2>&1
yum-config-manager --enable epel -y >>/tmp/setup.log 2>&1
yum update >>/tmp/setup.log 2>&1
pkgs=(vim tar wget yum-utils net-tools java-1.8.0-openjdk)
for p in ${pkgs[@]}; do yum install -y ${p}; done;  >>/tmp/setup.log 2>&1
yum upgrade -y >>/tmp/setup.log 2>&1
java --version >>/tmp/setup.log 2>&1
wget http://muug.ca/mirror/apache-dist/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz -P /opt >>/tmp/setup.log 2>&1
tar xvf /opt/spark-2.3.0-bin-hadoop2.7.tgz -C /opt >>/tmp/setup.log 2>&1
chown -R root:root /opt >>/tmp/setup.log 2>&1
ln -s /opt/spark-2.3.0-bin-hadoop2.7 /opt/spark >>/tmp/setup.log 2>&1
echo "Setup complete .. rebooting.."
reboot >>/tmp/setup.log 2>&1