###Crossover 11 ####
echo "##################################"
echo "INSTALLING CROSSOVER 11"
echo "##################################"
wget http://www.leobravo.cl/programas/deb/crossover_11.3.1-1_i386.deb
dpkg -i crossover_11.3.1-1_i386.deb
apt-get install -f -y

