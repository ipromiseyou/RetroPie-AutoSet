## 07. GPIO Setting

AUTOSET_HOME=/home/pi/RetroPie-AutoSet

sudo apt-get update
sudo apt-get -qy upgrade
sudo apt-get install -y --force-yes dkms cpp-4.7 gcc4.7 git joystick
sudo apt-get install raspberrypi-kernel-headers
wget https://github.com/digitalLumberjack/mk_arcade_joystick_rpi/releases/download/v0.1.4/mk-arcade-joystick-rpi-0.1.4.deb
sudo dpkg -i mk-arcade-joystick-rpi-0.1.4.deb
echo "mk_arcade_joystick_rpi" >> /etc/modules
echo "options mk_arcade_joystick_rpi map=1,2" >> /etc/modprobe.d/mk_arcade_joystick.conf

echo "GPIO Setting Complete. Reboot after 5 Seconds."
sync
sleep 5
reboot
