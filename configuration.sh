
# sudo cat<<EOF | sudo tee -a /etc/sudoers
# ubuntu ALL=(ALL) NOPASSWD: ALL
# EOF


echo 'Docker instlalation'

#sudo yum update -y
sudo apt-get update

#sudo yum -y install docker
sudo apt install docker.io -y
#sudo service docker start
#sudo service enable docker
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service


#sudo usermod -a -G docker ec2-user
sudo usermod -a -G docker vagrant

#sudo usermod -aG docker $(whoami)
sudo chmod 666 /var/run/docker.sock

# #sudo su 
# sudo cat<<EOF | sudo tee /etc/docker/daemon.json
# {
#    "exec-opts": ["native.cgroupdriver=systemd"]
# }
# EOF
sudo systemctl restart docker
