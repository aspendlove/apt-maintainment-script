# apt-maintainment-script
This is a shell script that runs a bunch of apt commands that keep your system up to date and using less space.
The commands that it runs are:

sudo apt update

sudo apt upgrade

sudo apt full-upgrade

sudo apt autoremove

sudo apt autoclean

sudo aptitude purge ~c

To install run these commands in the terminal

cd ~

cd Downloads

git clone https://github.com/copperly123/apt-maintainment-script.git

cd apt-maintainment-script

chmod a+x install.sh

./install.sh
