###SAMBA###
echo "Samba username"
read user

aptitude install -y samba
aptitude install -y gadmin-samba
aptitude install -y samba-common

echo "supporting previous configuration"
cp /etc/samba/smb.conf /etc/samba/smb.conf.back
echo "Creating folder to share"
mkdir /home/$user/share
echo "Loading new configuration"
echo "[red_compartido]" >> /etc/samba/smb.conf
echo "comment = Archivos Compartidos"  >> /etc/samba/smb.conf
echo "path = /home/$user/share"  >> /etc/samba/smb.conf
echo "public = yes"  >> /etc/samba/smb.conf
echo "writable = yes"  >> /etc/samba/smb.conf
echo "force user = nobody"  >> /etc/samba/smb.conf
echo "force group = nogroup"  >> /etc/samba/smb.conf
echo "####################################"
echo "ENTER KEY TO THE FOLDER IN RED"
echo "####################################"
smbpasswd -a $user
/etc/init.d/samba restart
echo "Done"

