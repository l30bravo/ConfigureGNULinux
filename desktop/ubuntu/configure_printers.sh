echo "##################################"
echo "CONFIGURING NETWORK PRINTERS"
echo "##################################"
apt-get install -y cups cups-client
wget www.leobravo.cl/programas/recursos/cupsd.zip
unzip cupsd.zip
cp /etc/cups/cupsd.conf /etc/cups/cupsd.conf.back
mv cupsd.conf /etc/cups/
/etc/init.d/cups restart


