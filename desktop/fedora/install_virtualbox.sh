yum -y install VirtualBox-*
su -c '/etc/init.d/vboxdrv setup'
su -c 'usermod -G vboxusers -a username'

