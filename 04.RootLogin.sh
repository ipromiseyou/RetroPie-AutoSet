## 04. Root Login

AUTOSET_HOME=/home/pi/RetroPie-AutoSet

sed -i "s/^PermitRootLogin without-password/PermitRootLogin yes/" /etc/ssh/sshd_config
#ps -ef | grep -v grep | grep root | grep sshd | awk '{print "kill -HUP "$2}' | sh

echo "Root login Setting Complete"
