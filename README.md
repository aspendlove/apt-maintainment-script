# apt-maintainment-script
This is a shell script that runs a bunch of apt commands that keep your system up to date and using less space.
The commands that it runs are:

sudo apt update

sudo apt upgrade

sudo apt full-upgrade

sudo apt autoremove

sudo apt autoclean

sudo aptitude purge ~c

to install you need to make sure that the file install.sh is exectuable (run "chmod a+x install.sh") and then run "./install.sh" (you need to make sure that you are in the same directory of the downloaded files, to do that you need to run "cd PATH TO DIRECTORY" in your terminal or go into your file manager and navigate to the folder then right click and hit "open in terminal")
