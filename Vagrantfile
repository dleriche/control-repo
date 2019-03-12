# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
   config.vm.define "master" do |master|
    master.vm.box = "centos/7"
    master.vm.hostname = 'master'
    
    master.vm.network :private_network, ip: "192.168.56.100"
    master.vm.network :forwarded_port, guest: 22, host: 10022, id: "ssh"
    master.vm.network :forwarded_port, guest: 443, host: 8443

    master.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "master"]
    end
  end

  config.vm.define "node1" do |node1|
    node1.vm.box = "centos/7"
    node1.vm.hostname = 'node1'
    
    node1.vm.network :private_network, ip: "192.168.56.101"
    node1.vm.network :forwarded_port, guest: 22, host: 10122, id: "ssh"

    node1.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "node1"]
    end
  end

  config.vm.define "node2" do |node2|
    node2.vm.box = "centos/7"
    node2.vm.hostname = 'node2'
    
    node2.vm.network :private_network, ip: "192.168.56.102"
    node2.vm.network :forwarded_port, guest: 22, host: 10222, id: "ssh"

    node2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "node2"]
    end
  end

  config.vm.define "node3" do |node3|
    node3.vm.box = "centos/7"
    node3.vm.hostname = 'node3'
    
    node3.vm.network :private_network, ip: "192.168.56.103"
    node3.vm.network :forwarded_port, guest: 22, host: 10322, id: "ssh"

    node3.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "node3"]
    end
  end
end