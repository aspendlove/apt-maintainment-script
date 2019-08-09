#!/bin/bash
#variable to check if you need to restart
restart=0
#check if /usr/local/bin exists
if [ ! -d /usr/local/bin/ ]
then
	#if not create it
	sudo mkdir /usr/local/
	sudo mkdir /usr/local/bin/
	#add it to path
	export PATH=$PATH:/usr/local/bin
	#and set the restart flag
	restart=1
fi
#give all executables executable permissions
chmod a+x maintain
#ask if you want to install a dependency
echo "Do you want to isntall the dependency aptitude? (you will need this to use the program)"
read -p 'yes or no> ' yorn
if [ "$yorn" != 'y' ] && [ "$yorn" != 'n' ] && [ "$yorn" != 'yes' ] [ "$yorn" != 'no' ]
then
  echo ''
  echo 'Error, please respond with "y", "yes", "n" or "no" only'
  echo "you answered with "'"'"$yorn"'"'
  exit
fi
if [ "${yorn}" = 'yes' ] || [ "${yorn}" = 'y' ]
then
	sudo apt install aptitude
else
  echo '
  '
  echo 'alright, continuing without installing'
fi
echo 'installing apt-maintainment-script'
#copy executables to /usr/local/bin
sudo cp maintain /usr/local/bin

echo '
'
#check if the restart flag is set
if [ $restart != 1 ]
then
	#if not then tell the user that the program is installed
	echo "fully installed"
else
	#if so then tell them that they will need to reboot"
	echo "you will need to reboot to fully install"
fi
exit
