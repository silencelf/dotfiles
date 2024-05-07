#! /bin/bash

# update apt
sudo apt update

# setup bbr
echo "current tcp_congestion_control: "
sysctl net.ipv4.tcp_congestion_control

# setup kernal settings, the file name needs to be updated
sudo tee -a /etc/sysctl.conf >/dev/null <<EOT
net.core.default_qdisc=fq
net.ipv4.tcp_congestion_control=bbr
vm.swappiness=10
vm.vfs_cache_pressure=50
EOT

# sudo sysctl -p

# install docker
sudo snap install docker --classic
sudo docker run --name ts --restart always -d -p 9987:9987/udp -p 10011:10011 -p 30033:30033 -e TS3SERVER_LICENSE=accept teamspeak

# install certbot
sudo snap install certbot --classic
sudo certbot --nginx

# setup owncast
sudo docker run --name owncast --restart always -d -v $(pwd)/data:/app/data -p 8080:8080 -p 1935:1935 -it owncast/ownca
st:latest

# setup swap
echo 'setup swap...'
sudo fallocate -l 1G /swapfile &&
	sudo chmod 600 /swapfile &&
	ls -lh /swapfile &&
	sudo mkswap /swapfile &&
	sudo swapon /swapfile &&
	sudo swapon --show &&
	free -h &&
	sudo cp /etc/fstab /etc/fstab.bak &&
	echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
