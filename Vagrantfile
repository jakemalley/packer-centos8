# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.box = "file://build/virtualbox-centos8.box"

  config.vm.hostname = "centos8.dev.local"
  config.vm.network :private_network, ip: "172.16.0.10"

  # Configure the VM
  config.vm.provider "virtualbox" do |vb|
    vb.name = "virtualbox-centos8"
    vb.gui = false
    vb.cpus = 2
    vb.memory = 2048
  end

  # Run Ansible Provisioner
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/additional.yml"
  end
end
