echo "##################################"
echo "INSTALLING ACCESSORIES"
echo "##################################"

yum -y install kernel-headers
yum -y install kernel-devel
yum -y install sed curl wget sudo dif sudo nano
yum install -y kernel-headers kernel-devel dkms gcc

