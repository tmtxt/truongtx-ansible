# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  # port forwarding
  config.vm.network :forwarded_port, guest: 8080, host: 9250
  config.vm.network :forwarded_port, guest: 9250, host: 9251

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  # provision
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "main.yml"

    ansible.extra_vars = {}
  end
end
