#!/bin/sh

#
#	POR   : Leonardo Bravo
#	WEB   : http://www.leobravo.cl
#	FECHA : 25/05/2014
#
clear
echo "#####################################"
echo " CONFIGURACION GNU LINUX 3.0 SERVER"
echo "#####################################"

if [ "$(whoami)" != 'root' ]; then
        echo "You have no permission to run $0 as non-root user."
        exit 1;
fi

echo "1)-Install Apachen\n"
echo "2)-Install MySQL\n"
echo "3)-Install PostgreSQL\n"
read opt


if [ $opt = 1 ]; then
  chmod +x apache.sh
  ./apache.sh
fi

if [ $opt = 2 ]; then
  chmod +x mysql.sh
  ./mysql.sh
fi

if [ $opt = 3 ]; then
  chmod +x postgre.sh
  ./postgre.sh
fi

exit 1

