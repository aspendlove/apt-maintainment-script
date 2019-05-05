#!/bin/bash
#variable to check if you need to restart
restart=0
#check if usr/local/bin exists
if [ ! -d "/usr/local/bin/" ]
then
	#if so then create it
	sudo mkdir /usr/local/
	sudo mkdir /usr/local/bin/
	#and add it to path
	export PATH=$PATH:/usr/local/bin
	#and set the reset flag
	restart=1
fi
echo 'installing apt-maintainment-script'
#give all executables executable permissions
sudo chmod +x maintain
#copy executables to /usr/local/bin
sudo cp maintain /usr/local/bin
echo '
'
#check if the restart flag is set
if [ $restart != 1 ]
then
	#if not then tell the user that the program is installed
	echo "Fully installed"
else
	#if so then tell the user that they will need to restart
	echo "You will need to restart to finish the installation"
fi
exit
