# apt-maintainment-script
This is a shell script that runs a bunch of apt commands that keep your system up to date and using less space.
The commands that it runs are:

sudo apt update

sudo apt upgrade

sudo apt full-upgrade

sudo apt autoremove

sudo apt autoclean

sudo aptitude purge ~c

to install you just need to make sure that the files "maintain" and "install.sh" in the folder you have downloaded from this repository have executable permissions (right click, properties, permissions, allow executing file as program or something similar for most distros) Then double click on the install.sh file and run in terminal. You will now be able to open a terminal and type in maintain to run the script
