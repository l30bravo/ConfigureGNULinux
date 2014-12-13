#!/bin/sh

#
#	POR   : Leonardo Bravo
#	WEB   : http://www.leobravo.cl
#	FECHA : 13/12/2014
#

echo "#######################################"
echo " Setting GNU Linux 2.1 - DEBIAN"
echo "#######################################"

if [ "$(whoami)" != 'root' ]; then
        echo "You have no permission to run $0 as non-root user."
        exit 1;
fi

clear
echo "1)-Install Crossover11"
echo "2)-Install Flash"
echo "3)-Install HDMI Controller"
echo "4)-Install Kernel Headers"
echo "5)-Install Printers"
echo "6)-Install SAMBA"
echo "7)-Install ViretualBox"
echo "8)-Update Source.list"
echo "9)-Install ALL"
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
  chmod +x install_hdmicontroler.sh
  ./install_hdmicontroler.sh
fi

if [ $opt = 4 ]; then
  chmod +x install_headerskernel.sh
  ./install_headerskernel.sh
fi

if [ $opt = 5 ]; then
  chmod +x install_printers.sh
  ./install_printers.sh
fi

if [ $opt = 6 ]; then
  chmod +x install_samba.sh
  ./install_samba.sh
fi

if [ $opt = 7 ]; then
  chmod +x install_virtual_box.sh
  ./install_virtual_box.sh
fi

if [ $opt = 8 ]; then
  chmod +x update_sourcelist.sh
  ./update_sourcelist.sh
fi

if [ $opt = 9 ]; then
  chmod +x *.sh
  ./*.sh
fi







