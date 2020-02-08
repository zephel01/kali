# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "kalilinux/rolling"
  config.vm.box_version = "2020.1.0"
  config.ssh.insert_key = false
  config.vm.boot_timeout = 600

  # gui off
  config.vm.provider "virtualbox" do |vb|
	vb.gui = false
	vb.memory = "2048"
	vb.customize ["modifyvm", :id, "--natnet1", "10.0.3/24"]
  end

  # Provision the machine with a shell script
  config.vm.provision :shell, :path => "setup.sh"

end
