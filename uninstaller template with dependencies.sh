#!/bin/bash
#ask if you want to install a dependency
echo "Do you want to unisntall aptitude? if unsure then chose no"
read -p 'yes or no> ' yorn
if [ "${yorn}" = 'yes' ]
then
  echo '
  '
  echo 'uninstalling aptitude'
  echo '
  '
  sudo apt remove aptitude
else
  echo '
  '
  echo 'alright'
fi
echo 'uninstalling apt-maintainment-script'
#remove executables
sudo rm /usr/local/bin/maintain
echo '
'
echo 'fully uninstalled'
exit
