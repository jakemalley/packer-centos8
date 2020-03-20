# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.ssh.insert_key = false
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.box = "file://build/virtualbox-centos8.box"
  
  config.vm.provider "virtualbox" do |vb|
    vb.name = "virtualbox-centos8"
    vb.gui = false
    vb.cpus = 2
    vb.memory = 2048
  end
end
