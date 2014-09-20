###SAMBA###
echo "##################################"
echo "INSTALLING SAMBA"
echo "##################################"
yum -y install samba samba-common samba-client system-config-samba

echo -e "User Name [/home/username/] :" 
read user

#"RESPALDANDO CONFIG ANTERIOR"
cp /etc/samba/smb.conf /etc/samba/smb.conf.back
mkdir /home/$user/red_compartido
echo "[red_compartido]" >> /etc/samba/smb.conf
echo "comment = Archivos Compartidos"  >> /etc/samba/smb.conf
echo "path = /home/$user/compartido"  >> /etc/samba/smb.conf
echo "public = yes"  >> /etc/samba/smb.conf
echo "writable = yes"  >> /etc/samba/smb.conf
echo "force user = nobody"  >> /etc/samba/smb.conf
echo "force group = nogroup"  >> /etc/samba/smb.conf
echo "####################################"
echo "ENTER KEY TO THE FOLDER IN RED"
echo "####################################"
smbpasswd -a $user
/etc/init.d/samba restart
