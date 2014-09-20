#!/bin/sh

#
#	POR   : Leonardo Bravo
#	WEB   : http://www.leobravo.cl
#	FECHA : 25/05/2014
#

clear
echo "######################################"
echo " CONFIGURACION GNU LINUX 2.0 DESKTOP"
echo "######################################"

if [ "$(whoami)" != 'root' ]; then
        echo "You have no permission to run $0 as non-root user."
        exit 1;
fi

debian=0
ubuntu=0
fedora=0
echo "GNU Linux: \n 1)-Debian \n 2)-Ubuntu \n 3)-Linux Mint \n 4)-Fedora \n Enter the number:" 
read distro


if [ $distro = 1 ]; then
  debian=1
  chmod +x debian.sh
  ./debian.sh
fi

if [ $distro = 2 ]; then
  ubuntu=2
  chmod +x ubuntu.sh
  ./ubuntu.sh
fi

if [ $distro = 3 ]; then
  ubuntu=1
  chmod +x ubuntu.sh
  ./ubuntu.sh
fi

if [ $distro = 4]; then
  fedora=1
  chmod +x fedora.sh
  ./fedora.sh
fi

exit 1

