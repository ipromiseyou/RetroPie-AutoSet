## 03. Custom bashrc

AUTOSET_HOME=/home/pi/AutoSet

cp /home/pi/.bashrc /home/pi/.bashrc.org
cp $AUTOSET_HOME/Cab/03.Bashrc/.bashrc /home/pi
chown pi.pi /home/pi/.bashrc
chown pi.pi /home/pi/.bashrc.org

echo "Bashrc Setting Complete"
