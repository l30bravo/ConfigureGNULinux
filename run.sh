#!/bin/sh

#
#	POR   : Leonardo Bravo
#	WEB   : http://www.leobravo.cl
#	FECHA : 25/05/2014
#

echo "##################################"
echo " CONFIGURACION GNU LINUX 3.0"
echo "##################################"

if [ "$(whoami)" != 'root' ]; then
        echo "You have no permission to run $0 as non-root user."
        exit 1;
fi


echo "GNU Linux: \n 1)-Desktop \n 2)-Server \n Enter the number:"
read distro


if [ $distro = 1 ]; then
  cd desktop
  chmod +x desktop.sh
  ./desktop.sh
fi


if [ $distro = 2 ]; then
  cd server
  chmod +x server.sh
  ./server.sh
fi

echo "Done!"

exit 1

