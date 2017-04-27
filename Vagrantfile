# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.provision :shell, inline: 'apt-get install -y avahi-daemon nodejs'
  config.vm.hostname = "vagrantbox"
  config.vm.network "private_network", type: :dhcp
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.box = "leopard/rwtrusty64"
end
