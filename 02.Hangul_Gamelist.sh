## 02. Hangul Gamelist

AUTOSET_HOME=/home/pi/Retropie-AutoSet

cp $AUTOSET_HOME/Cab/02.Hangul_Gamelist/gamelist_mame.tgz /home/pi/RetroPie/roms/fba
cd /home/pi/RetroPie/roms/fba
tar zxvf gamelist_mame.tgz
rm gamelist_mame.tgz

cp $AUTOSET_HOME/Cab/02.Hangul_Gamelist/gamelist_mame.tgz /home/pi/RetroPie/roms/mame-mame4all
cd /home/pi/RetroPie/roms/mame-mame4all
tar zxvf gamelist_mame.tgz
rm gamelist_mame.tgz

if [ -d /home/pi/RetroPie/roms/mame-advmame ]
 then
  cp $AUTOSET_HOME/Cab/02.Hangul_Gamelist/gamelist_mame.tgz /home/pi/RetroPie/roms/mame-advmame
  cd /home/pi/RetroPie/roms/mame-advmame
  tar zxvf gamelist_mame.tgz
  rm gamelist_mame.tgz
 else
  echo "Skip advmame.."
fi

cp $AUTOSET_HOME/Cab/02.Hangul_Gamelist/gamelist_gba.xml /home/pi/.emulationstation/gamelists/gba/gamelist.xml

echo "Hangul Gamelist(fba, mame series) Setting Complete" 
