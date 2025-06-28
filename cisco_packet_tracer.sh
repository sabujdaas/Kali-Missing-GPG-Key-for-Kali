echo "Run this command to auto-install whatever’s missing:"
sudo apt --fix-broken install -y
sudo apt install equivs debhelper -y
mkdir ~/fake-glx && cd ~/fake-glx
equivs-control libgl1-mesa-glx
nano libgl1-mesa-glx

echo "paste The Following Line(Overwrite the previous): "
echo "Section: misc
Priority: optional
Standards-Version: 3.9.2

Package: libgl1-mesa-glx
Version: 1.0
Maintainer: dummy <dummy@localhost>
Architecture: all
Description: Dummy package for Packet Tracer
"

echo "Then Build & Install"
equivs-build libgl1-mesa-glx
sudo dpkg -i libgl1-mesa-glx_1.0_all.deb
sudo apt install libxcb-xinerama0-dev -y
sudo dpkg -i CiscoPacketTracer822_amd64_signed.deb
packettracer
