#!/bin/sh
 # 
#command wget https://raw.githubusercontent.com/tar1971/plugin/main/installer.sh -O - | /bin/sh
 # # 
cd /tmp
set -e 
wget "https://github.com/tar1971/plugin/blob/main/enigma2-plugin-extensions-xcplugin-forever_1.8_all.ipk?raw=true"
cd /tmp
opkg install --force-overwrite
wait
opkg install --force-overwrite /tmp/enigma2-plugin-extensions-xcplugin-forever_1.8_all
wait
cd ..
set +e
rm -f /tmp/script.tar.gz
echo "   UPLOADED BY  >>>>   TAR_TAR "   
sleep 4;                                                                                                                  
wait
killall -9 enigma2
exit 0
