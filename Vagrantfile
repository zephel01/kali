# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "kalilinux/rolling"
  config.vm.box_version = "2020.1.0"
  config.ssh.insert_key = false
  config.vm.boot_timeout = 600

  # gui off
  config.vm.provider "virtualbox" do |vm|
	vm.gui = false
	vm.memory = "2048"
        vm.default_nic_type = "virtio"
	vm.customize ["modifyvm", :id, "--natnet1", "10.0.3/24"]
        vm.customize ["modifyvm", :id, "--nic1", "nat"]
  end
  
  # Provision the machine with a shell script
  config.vm.provision :shell, :path => "setup.sh"

end
