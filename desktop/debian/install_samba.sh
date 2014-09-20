###SAMBA###
echo "##################################"
echo "INSTALLING SAMBA"
echo "##################################"

echo "User Name" 
read user

aptitude install samba smbfs samba-common
  
#"RESPALDANDO CONFIG ANTERIOR"
cp /etc/samba/smb.conf /etc/samba/smb.conf.back
mkdir /home/$user/red_compartido
echo "[red_compartido]" >> /etc/samba/smb.conf
echo "comment = Archivos Compartidos"  >> /etc/samba/smb.conf
echo "path = /home/$user/red_compartido"  >> /etc/samba/smb.conf
echo "public = yes"  >> /etc/samba/smb.conf
echo "writable = yes"  >> /etc/samba/smb.conf
echo "force user = nobody"  >> /etc/samba/smb.conf
echo "force group = nogroup"  >> /etc/samba/smb.conf
echo "####################################"
echo "ENTER KEY TO THE FOLDER IN RED"
echo "####################################"
smbpasswd -a $user
/etc/init.d/samba restart

