# Ubuntu (not sure)
# Try this link: https://askubuntu.com/questions/833322/pair-bose-quietcomfort-35-with-ubuntu-over-bluetooth
# sudo apt install libasound2-dev 
# sudo apt-get -y install bluez-hcidump checkinstall libusb-dev libbluetooth-dev 
# sudo apt-get -y install joystick libusb-1.0-0-dev bluez pyqt4-dev-tools python-dbus
# sudo apt-get install bluetooth libbluetooth3 libusb-dev
# sudo systemctl enable bluetooth.service

# Fedora

sudo yum install alsa-lib-devel bluez-hcidump libusb-devel bluez-libs-devel joystick 
sudo yum install bluez PyQt4-devel bluez-hid2hci libsndfile-devel sbc-devel libbsd-devel libtool

# install checkinstall on fedora
git clone http://checkinstall.izto.org/checkinstall.git
cd checkinstall
make
sudo make install

cd ../fdkaac
./configure
make -j8
sudo make install

cd ../ortp
CFLAGS="-Wno-unused-but-set-variable -Wno-sizeof-pointer-memaccess" ./configure --disable-warnings-as-errors
make -j8
sudo make install

cd ../bluez-alsa
./configure
make -j8
sudo make install

sudo yum install blueman