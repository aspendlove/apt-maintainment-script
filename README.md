# apt-maintainment-script
This is a shell script that runs a bunch of apt commands that keep your system up to date and using less space.
The commands that it runs are:

	sudo apt update

	sudo apt upgrade

	sudo apt autoremove

And with the optional --purge flag

	sudo aptitude purge ~c

------------------------------------------------------

To install run these commands in the terminal:

    cd ~/Downloads

    git clone https://github.com/copperly123/apt-maintainment-script.git

    cd apt-maintainment-script

    chmod +x install.sh

    ./install.sh

These commands will go into your Downloads folder, download this repository, and execute the install script.

---------------------------------------------------------

After the installation you just have to run the command "maintain" in the terminal and the program will run
