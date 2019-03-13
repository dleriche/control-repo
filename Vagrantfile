# -*- mode: ruby -*-
# vi: set ft=ruby :

$nodes_count = 3

if ENV['NODES'].to_i > 0 && ENV['NODES']
  $nodes_count = ENV['NODES'].to_i
end

Vagrant.configure('2') do |config|
  config.vm.box = 'centos/7'
  config.ssh.forward_agent = true
  config.vm.network "private_network", type: "dhcp"

  (1..$nodes_count).each do |i|
    config.vm.define "node#{i}"
  end

  config.vm.define "master" do |master|
    master.vm.box = "centos/7"
    master.vm.hostname = 'master'
    
    master.vm.network :private_network, ip: "192.168.56.7"
    master.vm.network :forwarded_port, guest: 22, host: 10122, id: "ssh"
    master.vm.network "forwarded_port", guest: 443, host: 8443

    master.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "master"]
    end
  end
end