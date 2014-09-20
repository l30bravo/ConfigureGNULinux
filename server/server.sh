#!/bin/sh

#
#	POR   : Leonardo Bravo
#	WEB   : http://www.leobravo.cl
#	FECHA : 25/05/2014
#
clear
echo "#####################################"
echo " CONFIGURACION GNU LINUX 2.0 SERVER"
echo "#####################################"

if [ "$(whoami)" != 'root' ]; then
        echo "You have no permission to run $0 as non-root user."
        exit 1;
fi

=0
ubuntu=0

echo "GNU Linux: \n 1)-Debian \n 2)-Ubuntu \n 3)-Centeo \n 4)-RedHat \n Enter the number:" 
read distro


if [ $distro = 1 ]; then
  cd deb
  chmod +x deb.sh
  ./deb.sh
fi

if [ $distro = 2 ]; then
  cd deb
  chmod +x deb.sh
  ./deb.sh
fi

if [ $distro = 3 ]; then
  echo "En contrucción \n"
fi

if [ $distro = 4 ]; then
  echo "En contrucción \n"
fi


exit 1

