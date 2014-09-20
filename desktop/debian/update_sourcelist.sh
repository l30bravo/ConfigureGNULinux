###ACTUALIZANDO EL SISTEMA###
cp /etc/apt/sources.list /etc/apt/sources.list.back

echo "DO YOU WANT TO ADD THE REPOSITORY UNSTALBE [s / n]"
read unstable
if [ $unstable = "s" ]; then
        echo "##UNSTABLE##">>/etc/apt/sources.list
        echo "deb http://ftp.debian.org/debian/ unstable main" >> /etc/apt/sources.list
        echo "deb-src http://ftp.debian.org/debian/ unstable main" >> /etc/apt/sources.list
        echo "##UNSTABLE NON FREE##">>/etc/apt/sources.list
        echo "deb http://ftp.us.debian.org/debian/ unstable main contrib non-free">>/etc/apt/sources.list
        echo "deb-src http://ftp.us.debian.org/debian/ unstable main contrib non-free">>/etc/apt/sources.list
fi

echo "DO YOU WANT TO ADD THE REPOSITORY EXPERIMENTAL [s / n]"
read experimental
if [ $experimental = "s" ]; then
        echo "##EXPERIMENTAL##"
        echo "deb http://ftp.debian.org/debian/ experimental main">>/etc/apt/sources.list
        echo "deb http://ftp.debian.org/debian/ experimental main">>/etc/apt/sources.list
fi

apt-get update
