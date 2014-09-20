apt-get install -y postgresql
apt-get install -y php5-pgsql
apt-get install -y libapache2-mod-auth-pgsql
/etc/init.d/apache2 restart
/etc/init.d/postgresql restart

