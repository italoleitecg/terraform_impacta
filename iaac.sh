sudo apt update
sudo apt upgrade -y
#Instalar guest additions p/ mapeamento correto da /vagrant, estou tentando instalar o essencial
#sudo apt install virtualbox-guest-dkms virtualbox-guest-x11 virtualbox-guest-utils
sudo apt install virtualbox-guest-utils
#sudo echo "vagrant /vagrant vboxsf uid=1000,gid=1000,_netdev 0 0" >> /etc/fstab
sudo apt update
sudo apt dist-upgrade -y
sudo apt install -y git git-flow docker.io docker-compose awscli gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
apt update && apt install terraform -y
sudo reboot