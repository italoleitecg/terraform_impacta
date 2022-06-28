# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

  #linux versão ubuntu 18.04 LTS da Hashicorp
  config.vm.box = "hashicorp/bionic64"

  config.vm.provider "virtualbox" do |v|
	v.cpus = 1
  v.memory = 2048
  v.customize ['modifyvm', :id, '--graphicscontroller', 'vmsvga']
  v.customize ['modifyvm', :id, '--vram', '16']
  end

  config.vm.define "iaac-station" do |m|
    m.vm.hostname = "iaac-station"
    m.vm.network "private_network", ip: "10.0.0.10"
    #m.vm.provision "shell", inline: "sudo apt-get update"
    #m.vm.provision "shell", inline: "sudo apt-get upgrade -y"
    m.vm.provision "shell", path: "iaac.sh", run: "once"
    #m.vm.provision "shell", path: "sudo mount -t cifs //10.0.0.1/cloud plat /vagrant -o user=italo"
    #m.vm.provision "shell", path: "//10.0.0.1/cloudplat /vagrant cifs username=italo,password=121212Lo0,  0       0"
    #m.vm.provision "shell", path: "sudo echo '//10.0.0.1/cloudplat /vagrant cifs username=italo,password=121212Lo0,  0       0' >> /etc/fstab"
    #m.vm.provision "shell", path: 'sudo echo "vagrant /vagrant vboxsf uid=1000,gid=1000,_netdev 0 0" >> /etc/fstab'
    
    
    #m.vm.synced_folder "c:\\temp\\teste", "/vagrantTESTE", type: "nfs", run: "always"
  end
end