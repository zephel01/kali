# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "kalilinux/rolling"

  # Create a private network. In VirtualBox, this is a Host-Only network
  config.vm.network "private_network", ip: "10.0.0.2"

  # gui off
  config.vm.provider "virtualbox" do |vb|
	vb.gui = false
	vb.memory = "1024"
	vb.customize ["modifyvm", :id, "--natnet1", "10.0.3.0/24"]
  end

  # Provision the machine with a shell script
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y crowbar
  SHELL

  config.vm.provision :shell, :path => "setup.sh"

end