# UPDATE/UPGRADE
dnf -y update
dnf -y upgrade

# SELINUX STUFF
vi /etc/selinux/config
#CHANGE LINE TO "DISABLE"
systemctl disable firewalld.service

# KERBEROS
dnf -y install krb5-libs krb5-server krb5-workstation 
wget http://computing.fnal.gov/authentication/krb5conf/Linux/krb5.conf
cp /etc/krb5.conf /etc/krb5.conf.bckp
mv -f krb5.conf /etc

# VNC CLIENT
wget LINK(VNC-5.3.0-Linux-x64-RPM.tar.gz)
tar -tzvf VNC-5.3.0-Linux-x64-RPM.tar.gz
dnf -y install xterm
rpm -ivhy VNC-Server-5.3.0-Linux-x64.rpm
rpm -ivhy VNC-Viewer-5.3.0-Linux-x64.rpm

# VPN CLIENT
wget LINK(vpnsetup.sh)
chmod +x vpnsetup.sh
./vpnsetup.sh

# SSH CLIENT
# Isn't it there by default already?

# OPERA
wget http://operasoftware.pc.cdn.bitgravity.com/pub/opera/desktop/35.0.2066.68/linux/opera-stable_35.0.2066.68_amd64.rpm
rpm -ivhy opera-stable_35.0.2066.68_amd64.rpm

# SKYPE
wget http://download.skype.com/linux/skype-4.3.0.37-fedora.i586.rpm
dnf -y install libXv.i686 libXScrnSaver.i686 qt.i686 qt-x11.i686 pulseaudio-libs.i686 pulseaudio-libs-glib2.i686 alsa-plugins-pulseaudio.i686
rpm -ivhy skype-4.3.0.37-fedora.i586.rpm

# VIDYO
wget https://vidyoportal.cern.ch/upload/VidyoDesktopInstaller-sl564-TAG_VD_3_3_0_027.rp
rpm -ivhy VidyoDesktopInstaller-sl564-TAG_VD_3_3_0_027.rpm

# BROWSER SETTINGS
# ???
