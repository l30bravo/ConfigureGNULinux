#!/bin/sh

#
#	POR   : Leonardo Bravo
#	WEB   : http://www.leobravo.cl
#	FECHA : 13/12/2014
#

echo "########################################"
echo " Setting GNU Linux 2.1 - UBUNTU"
echo "########################################"

if [ "$(whoami)" != 'root' ]; then
        echo "You have no permission to run $0 as non-root user."
        exit 1;
fi

echo "##################################"
echo "UPDATING SYSTEM"
echo "##################################"
sudo apt-get update
sudo apt-get update


echo "1)-Configure Printers"
echo "2)-Install Crossover 11"
echo "3)-Install Flash"
echo "4)-Install HDMI Controller"
echo "5)-Install Java JRE"
echo "6)-Install Kernel Headers"
echo "7)-Install SAMBA"
echo "8)-Install Gestor de Software"
echo "9)-Install VirtualBox"
echo "10)-All"
read opt

cd ubuntu/

if [ $opt = 1 ]; then
  chmod +x configure_gtk_in_kde.sh
  ./configure_gtk_in_kde.sh
fi

if [ $opt = 1 ]; then
  chmod +x configure_printers.sh
  ./configure_printers.sh
fi

if [ $opt = 2 ]; then
  chmod +x install_crossover11.sh
  ./install_crossover11.sh
fi
if [ $opt = 3 ]; then
  chmod +x install_flash.sh
  ./install_flash.sh
fi
if [ $opt = 4 ]; then
  chmod +x install_hdmi_controler.sh
  ./install_hdmi_controler.sh
fi
if [ $opt = 5 ]; then
  chmod +x install_java_jre.sh
  ./install_java_jre.sh
fi
if [ $opt = 6 ]; then
  chmod +x install_kernel_headers.sh
  ./install_kernel_headers.sh
fi

if [ $opt = 7 ]; then
  chmod +x install_samba.sh
  ./install_samba.sh
fi
if [ $opt = 8 ]; then
  chmod +x install_software_gestor.sh
  ./install_software_gestor.sh
fi
if [ $opt = 9 ]; then
  chmod +x install_virtualbox.sh
  ./install_virtualbox.sh
fi

if [ $opt = 10 ]; then
  chmod +x *
  ./*.sh
fi
