#!/bin/sh

#
#	POR   : Leonardo Bravo
#	WEB   : http://www.leobravo.cl
#	FECHA : 27/09/2013
#

echo "########################################"
echo " CONFIGURACION GNU LINUX 2.0 - FEDORA"
echo "########################################"

if [ "$(whoami)" != 'root' ]; then
        echo "You have no permission to run $0 as non-root user."
        exit 1;
fi



echo "##################################"
echo "UPDATING SYSTEM"
echo "##################################"
yum update


echo "1)-Install Codec Video"
echo "2)-Install Kernel Headers"
echo "3)-Install LibreOffice"
echo "4)-Install Printers"
echo "5)-Install SAMBA"
echo "6)-Install VirtualBox"
echo "7)-All"
read distro

cd fedora/

if [ $distro = 1 ]; then
  chmod +x install_codec_video.sh
  ./install_codec_video.sh
fi

if [ $distro = 2 ]; then
  chmod +x install_kernel_headers.sh
  ./install_kernel_headers.sh
fi

if [ $distro = 3 ]; then
  chmod +x install_libreoffice.sh
  ./install_libreoffice.sh
fi

if [ $distro = 4 ]; then
  chmod +x install_printers.sh
  ./install_printers.sh
fi

if [ $distro = 5 ]; then
  chmod +x install_samba.sh
  ./install_samba.sh
fi

if [ $distro = 6 ]; then
  chmod +x install_virtualbox.sh
  ./install_virtualbox.sh
fi

if [ $distro = 7 ]; then
  chmod +x *
  ./*.sh
fi

