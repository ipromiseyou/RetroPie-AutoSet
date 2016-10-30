cd /home/pi/AutoSet
chmod 755 *sh
./01.Localization.sh
sleep 1
./02.Hangul_Gamelist.sh
sleep 1
./03.Bashrc.sh
sleep 1
./04.RootLogin.sh
sleep 1
./05.Network_Wait_Disable.sh
sleep 1
./06.TimeZone.sh
sleep 1
./07.Samba.sh
sleep 1
./08.PowerMenu.sh
sleep 1
./09.GPIO.sh
sleep 1

echo "Basic Setting Complete"
