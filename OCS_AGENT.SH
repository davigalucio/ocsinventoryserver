#########################
## INSTALAÇÂO DO AGENT ##
#########################

OCS_AGENT_VERSION=2.10.0
HOST_IP=$(hostname -I | head -n1 | cut -f1 -d' ')

apt install -y libapache2-mod-perl2-dev libmodule-install-perl dmidecode libxml-simple-perl libcompress-zlib-perl libnet-ip-perl libwww-perl libdigest-md5-perl libdata-uuid-perl

wget -P /opt/ https://github.com/OCSInventory-NG/UnixAgent/releases/download/v"$OCS_AGENT_VERSION"/Ocsinventory-Unix-Agent-"$OCS_AGENT_VERSION".tar.gz
tar -xf /opt/Ocsinventory-Unix-Agent-"$OCS_AGENT_VERSION".tar.gz -C /opt/

cd /opt/Ocsinventory-Unix-Agent-"$OCS_AGENT_VERSION"

export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

mkdir /opt/Ocsinventory-Unix-Agent-"$OCS_AGENT_VERSION"/log/

env PERL_AUTOINSTALL=1 perl Makefile.PL
make
make install
sudo perl postinst.pl --nowizard --server=http://$HOST_IP/ocsinventory --realm=realm --logfile=/opt/Ocsinventory-Unix-Agent-"$OCS_AGENT_VERSION"/log/ocsinventory-agent.log --now

#########################
## Atualizar 	       ##
#########################

sudo ocsinventory-agent --server http://$HOST_IP/ocsinventory
