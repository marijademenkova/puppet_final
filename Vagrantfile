# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "server" do |server|
    server.vm.hostname = "server"
    server.vm.box = "sbeliakou-vagrant-centos-7.3-x86_64-minimal.box"
    server.vm.network "private_network", ip: "192.168.56.70"
    server.vm.provider "virtualbox" do |vb|
      vb.name = "server"
      vb.memory = "4096"
    end
  end

  config.vm.define "host1" do |host1|
    host1.vm.hostname = "host-agent1"
    host1.vm.box = "sbeliakou-vagrant-centos-7.3-x86_64-minimal.box"
    host1.vm.network "private_network", ip: "192.168.56.71"
    host1.vm.provider "virtualbox" do |vb|
      vb.name = "Host1"
      vb.memory = "2048"
    end
  end

  config.vm.define "host2" do |host2|
    host2.vm.hostname = "host-agent2"
    host2.vm.box = "ubuntu/trusty64"
    host2.vm.network "private_network", ip: "192.168.56.72"
    host2.vm.provider "virtualbox" do |vb|
      vb.name = "host2"
      vb.memory = "1024"
    end
  end

end
