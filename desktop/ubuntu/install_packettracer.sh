###PAKETTRACER###
echo "##################################"
echo "INSTALLING PACKET TRACER"
echo "##################################"
wget http://www.leobravo.cl/programas/recursos/PacketTracer53_i386_installer-deb.bin
sudo chmod +x PacketTracer53_i386_installer-deb.bin
sudo ./PacketTracer53_i386_installer-deb.bin


echo "Select an option:"
echo "1)Configure GTK in KDE"
echo "2)Configure printers"
echo "3)Install Crossover 11"
echo "4)Install Flash (Web)"
echo "5)Install HDMI controler"
echo "6)Install java JRE"
echo "7)Install Kernel Headers"
echo "8)Install Packet Tracer"
echo "9)Install Pencil"
echo "10)Install SAMBA"
echo "11)Install Software Gestor"
echo "12)Install Virtual Box"
echo "13)ALL"
echo ">"
read opt

cd ubuntu/

if [ $opt = "1" ]; then
        chmod +x configure_gtk_in_kde.sh
        ./configure_gtk_in_kde.sh
fi

if [ $opt = "2" ]; then
        chmod +x configure_printers.sh
        ./configure_printers.sh
fi
if [ $opt = "3" ]; then
        chmod +x install_crossover11.sh
        ./install_crossover11.sh
fi
if [ $opt = "4" ]; then
        chmod +x install_flash.sh
        ./install_flash.sh
fi
if [ $opt = "5" ]; then
        chmod +x install_hdmi_controler.sh
        ./install_hdmi_controler.sh
fi
if [ $opt = "6" ]; then
        chmod +x install_java_jre.sh
        ./install_java_jre.sh
fi
if [ $opt = "7" ]; then
        chmod +x install_kernel_headers.sh
        ./install_kernel_headers.sh
fi
if [ $opt = "8" ]; then
        chmod +x install_packettracer.sh
        ./install_packettracer.sh
fi
if [ $opt = "9" ]; then
        chmod +x install_pencil.sh
        ./install_pencil.sh
fi
if [ $opt = "10" ]; then
        chmod +x install_samba.sh
        ./install_samba.sh
fi
if [ $opt = "11" ]; then
        chmod +x install_software_gestor.sh
        ./install_software_gestor.sh
fi
if [ $opt = "12" ]; then
        chmod +x install_virtualbox.sh
        ./install_virtualbox.sh
fi

if [ $opt = "13" ]; then
        chmod +x *
        ./*.sh
fi


