
sudo apt update
sudo apt install \
	vim \
	git \
	git-cola \
	thunderbird \
	cmake \
	remmina \
	openssh-server \
	libreoffice \
	imagemagick \
	ack \
	mc \
	htop \
	xdot \

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

sudo snap install code --classic
sudo snap install discord --classic
sudo snap install android-studio --classic
sudo snap install telegram-desktop
sudo snap install mattermost-desktop --beta

AVAHI_CONF=/etc/avahi/avahi-daemon.conf
sudo cp -i ${AVAHI_CONF} ${AVAHI_CONF}.bak
sudo sed -i -E 's/^.*domain-name=.+$/domain-name=\.alocal/g' ${AVAHI_CONF}
sudo service avahi-daemon restart

SSHD_CONFIG=/etc/ssh/sshd_config
sudo cp -i ${SSHD_CONFIG} ${SSHD_CONFIG}.bak
sudo sed -i -E 's/^.*PubkeyAuthentication.+$/PubkeyAuthentication yes/g' ${SSHD_CONFIG}
sudo sed -i -E 's/^.*PasswordAuthentication.+$/PasswordAuthentication no/g' ${SSHD_CONFIG}
sudo service ssh restart

