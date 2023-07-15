sudo apt-get update
sudo apt-get -y upgrade

# pre-install
sudo apt-get -y install build-essential vim-nox emacs
sudo apt-get -y install git python-dev python-setuptools flex bison traceroute libbz2-dev libssl-dev
sudo apt-get -y install python-pip
sudo apt-get -y install mininet expect
sudo apt-get -y install xauth
sudo apt-get -y install libzeroc-ice35-dev libboost-all-dev

# POX
sudo rm -Rf /opt/pox
sudo mkdir -p /opt/pox
sudo git clone -b eel http://github.com/noxrepo/pox /opt/pox


pip install ucla-cs118
