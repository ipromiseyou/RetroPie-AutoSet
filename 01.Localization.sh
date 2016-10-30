## 01. Localization(Hangul)

AUTOSET_HOME=/home/pi/AutoSet
FONT_HANGUL='NanumGothicCoding-Bold.ttf'

# Get Current Theme
if [ -f /home/pi/.emulationstation/es_settings.cfg ]
 then
  THEME=`grep 'Theme' /home/pi/.emulationstation/es_settings.cfg | awk '{print $3}' | awk 'BEGIN {FS="value="} {print $2}' | cut -d\" -f2`
 else
  THEME=`ls -1 /etc/emulationstation/themes | head -1`
fi

# Get Font Name
FONT=`grep -i ttf /etc/emulationstation/themes/$THEME/$THEME.xml | sort -u | sed 's/<[^>]\+>//g' | cut -d/ -f3`

cp $AUTOSET_HOME/Cab/01.Localization/$FONT_HANGUL /etc/emulationstation/themes/$THEME/art
cp /etc/emulationstation/themes/$THEME/$THEME.xml /etc/emulationstation/themes/$THEME/$THEME.xml.org

sed -i "s/$FONT/$FONT_HANGUL/" /etc/emulationstation/themes/$THEME/$THEME.xml

echo "Localization(Hangul) Setting Complete" 
