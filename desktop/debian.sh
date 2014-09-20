#!/bin/sh

#
#	POR   : Leonardo Bravo
#	WEB   : http://www.leobravo.cl
#	FECHA : 27/02/2013
#

echo "#######################################"
echo " CONFIGURACION GNU LINUX 2.0 - DEBIAN"
echo "#######################################"

if [ "$(whoami)" != 'root' ]; then
        echo "You have no permission to run $0 as non-root user."
        exit 1;
fi

clear
echo "1)-Install Crossover11"
echo "2)-Install Flash"
echo "3)-Install GTK en KDE"
echo "4)-Install HDMI Controller"
echo "5)-Install Kernel Headers"
echo "6)-Install Paquettracer"
echo "7)-Install Pencil"
echo "8)-Install Printers"
echo "9)-Install SAMBA"
echo "10)-Install ViretualBox"
echo "11)-Update Source.list"
echo "12)-Install ALL"
read opt
cd debian

if [ $opt = 1 ]; then
  chmod +x install_crossover11.sh
  ./install_crossover11.sh
fi

if [ $opt = 2 ]; then
  chmod +x install_fash.sh
  ./install_fash.sh
fi

if [ $opt = 1 ]; then
  chmod +x configure_gtk_in_kde.sh
  ./configure_gtk_in_kde.sh
fi


if [ $opt = 3 ]; then
  chmod +x install_gtk_in_kde.sh
  ./install_gtk_in_kde.sh
fi

if [ $opt = 4 ]; then
  chmod +x install_hdmicontroler.sh
  ./install_hdmicontroler.sh
fi

if [ $opt = 5 ]; then
  chmod +x install_headerskernel.sh
  ./install_headerskernel.sh
fi

if [ $opt = 6 ]; then
  chmod +x install_packettracer.sh
  ./install_packettracer.sh
fi

if [ $opt = 7 ]; then
  chmod +x install_pencil.sh
  ./install_pencil.sh
fi

if [ $opt = 8 ]; then
  chmod +x install_printers.sh
  ./install_printers.sh
fi

if [ $opt = 9 ]; then
  chmod +x install_samba.sh
  ./install_samba.sh
fi

if [ $opt = 10 ]; then
  chmod +x install_virtual_box.sh
  ./install_virtual_box.sh
fi

if [ $opt = 11 ]; then
  chmod +x update_sourcelist.sh
  ./update_sourcelist.sh
fi

if [ $opt = 12 ]; then
  chmod +x *.sh
  ./*.sh
fi







