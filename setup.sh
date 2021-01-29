sudo apt update && sudo apt upgrade

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt update
sudo apt install \
	vim \
	git \
	git-cola \
	thunderbird \
	chromium-browser \
	cmake \
	sublime-text \
	clang \
	clang-format \
	llvm \
	remmina \
	xclip \
	openssh-server \
	libreoffice \
	imagemagick \
	ack \
	mc \
	htop \

sudo snap install code --classic
sudo snap install slack --classic
sudo snap install discord --classic

AVAHI_CONF=/etc/avahi/avahi-daemon.conf
sudo cp -i ${AVAHI_CONF} ${AVAHI_CONF}.bak
sudo sed -i -E 's/^.*domain-name=.+$/domain-name=\.alocal/g' ${AVAHI_CONF}
sudo service avahi-daemon restart

SSHD_CONFIG=/etc/ssh/sshd_config
sudo cp -i ${SSHD_CONFIG} ${SSHD_CONFIG}.bak
sudo sed -i -E 's/^.*PubkeyAuthentication.+$/PubkeyAuthentication yes/g' ${SSHD_CONFIG}
sudo sed -i -E 's/^.*PasswordAuthentication.+$/PasswordAuthentication no/g' ${SSHD_CONFIG}
sudo service ssh restart

