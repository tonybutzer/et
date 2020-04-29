
install:
	wget https://github.com/rancher/rke/releases/download/v1.0.6/rke_linux-amd64
	sudo mv rke_linux-amd64 /usr/local/bin/rke
	sudo chmod +x /usr/local/bin/rke
git:
	(cd /opt/k8s101; make)


ssh-sadness:
		sudo vi /etc/ssh/sshd_config
# PermitRootLogin prohibit-password to PermitRootLogin yes 
# PasswordAuthentication no to PasswordAuthentication yes
		sudo service ssh restart

