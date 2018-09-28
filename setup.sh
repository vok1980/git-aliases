sudo apt update && sudo apt upgrade

sudo add-apt-repository ppa:2gis/cpp-dev-env

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

AVAHI_CONF=/etc/avahi/avahi-daemon.conf
sudo cp -i ${AVAHI_CONF} ${AVAHI_CONF}.bak
sudo sed -i -E 's/^.*domain-name=.+$/domain-name=\.alocal/g' ${AVAHI_CONF}
