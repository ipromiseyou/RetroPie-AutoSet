## 08. Power Menu
# Use RetroPie Power Menu v2 by Steve Smith (https://youtu.be/K1za6L7nv2U)

AUTOSET_HOME=/home/pi/AutoSet

# Get Current Theme
if [ -f /home/pi/.emulationstation/es_settings.cfg ]
 then
  THEME=`grep 'Theme' /home/pi/.emulationstation/es_settings.cfg | awk '{print $3}' | awk 'BEGIN {FS="value="} {print $2}' | cut -d\" -f2`
 else
  THEME=`ls -1 /etc/emulationstation/themes | head -1`
fi

CHK1=`grep 'Power Menu' /etc/emulationstation/es_systems.cfg | wc -l`
if [ $CHK1 -gt 0 ]
 then
  echo "Skip to Theme Setting.."
 else
  # System List Regist
  cp /etc/emulationstation/es_systems.cfg /etc/emulationstation/es_systems.cfg.org
  sed -i "/<\/systemList>/d" /etc/emulationstation/es_systems.cfg
  cat $AUTOSET_HOME/Cab/08.PowerMenu/es_systems.cfg >> /etc/emulationstation/es_systems.cfg

  #Rom Setting
  mkdir /home/pi/RetroPie/roms/power
  cp $AUTOSET_HOME/Cab/08.PowerMenu/reboot.sh /home/pi/RetroPie/roms/power
  cp $AUTOSET_HOME/Cab/08.PowerMenu/shutdown.sh /home/pi/RetroPie/roms/power
  chown -R pi.pi /home/pi/RetroPie/roms/power
  chmod 755 /home/pi/RetroPie/roms/power/*.sh

  # Images Setting
  mkdir -p /home/pi/.emulationstation/downloaded_images/power
  cp $AUTOSET_HOME/Cab/08.PowerMenu/reboot.png /home/pi/.emulationstation/downloaded_images/power
  cp $AUTOSET_HOME/Cab/08.PowerMenu/shutdown.png /home/pi/.emulationstation/downloaded_images/power
  chown pi.pi /home/pi/.emulationstation/downloaded_images
  chown -R pi.pi /home/pi/.emulationstation/downloaded_images/power

  #Gamelist Setting
  mkdir /home/pi/.emulationstation/gamelists/power
  cp $AUTOSET_HOME/Cab/08.PowerMenu/gamelist.xml /home/pi/.emulationstation/gamelists/power
  chown -R pi.pi /home/pi/.emulationstation/gamelists/power
fi

#Theme Setting
mkdir -p /etc/emulationstation/themes/$THEME/power/art
cat $AUTOSET_HOME/Cab/08.PowerMenu/theme_pre.xml > $AUTOSET_HOME/Cab/08.PowerMenu/theme.xml
cat $AUTOSET_HOME/Cab/08.PowerMenu/theme_post.xml >> $AUTOSET_HOME/Cab/08.PowerMenu/theme.xml
sed -i "s/THEME_NAME/$THEME/" $AUTOSET_HOME/Cab/08.PowerMenu/theme.xml
mv $AUTOSET_HOME/Cab/08.PowerMenu/theme.xml /etc/emulationstation/themes/$THEME/power
cp $AUTOSET_HOME/Cab/08.PowerMenu/power.png /etc/emulationstation/themes/$THEME/power/art
cp $AUTOSET_HOME/Cab/08.PowerMenu/power_art_blur.jpg /etc/emulationstation/themes/$THEME/power/art

echo "Power Menu Setting Complete"
