# -*- mode: ruby -*-
# vi: set ft=ruby :

# Centos 7 Spark Master Vagrant File

Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"

  config.vm.define "spark-centos7-master" do |host|
    host.vm.hostname = "spark-centos7-master"
    host.vm.provider :virtualbox do |vb|
      vb.name = host.vm.hostname.to_s
	  vb.gui = false
      vb.memory = "1024"
    end
  end

  config.vm.network "forwarded_port", guest: 8080, host: 8888, host_ip: "127.0.0.1"
#  config.vm.network "forwarded_port", guest: 7077, host: 7777, host_ip: "127.0.0.1"
#  config.vm.network "forwarded_port", guest: 6066, host: 6666, host_ip: "127.0.0.1"

  config.vm.provision "shell", path: "setup.sh"

end