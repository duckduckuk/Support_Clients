I have a 3.5 Inch 480x320 TFT Display with Touch Screen, previously working in Raspbian, but so difficult to work under last version of DietPi. I only found this topic in Dietpi Forum about problems with Waveshare driver, but without a solution.

I was testing several compatible drivers for the touch screen, and some configurations into DietPi-config. Finally, it is working, doing just this:
- Into DietPi-config, into Display Options, I uninstall all panel
- Then, I installed the Elecrow driver, following this instructions (same to get working the same screen in Raspbian). DON'T REBOOT AFTER THE DRIVER finish the installation.
- I completed the setup, with:

Code: Select all

apt-get update
apt-get install -y libts-bin evtest xinput python-dev python-pip
pip install evdev
apt-get install -y xinput-calibrator

- When the Elecrow driver is installed, it change the /boot/config.txt file. BUT, DietPi really use /DietPi/config for this configuration file. Into /boot/config.txt you can read:

    # - Modifications to /boot/config.txt will not be preserved on reboot.
    # - Please ensure you edit from the DietPi-RAMdisk location: /DietPi/config.txt 

- So, the changes that the Elecrow driver into /boot/config.txt will dissapear after boot
- I have commented all the lines about display into /DietPi/config file (you can find lines about SPI or Overclock configuration)
- I opened the /boot/config.txt file and copy the lines that the Elecrow driver created during its installation. In my case:

Code: Select all

hdmi_force_hotplug=1
dtoverlay=ads7846,cs=1,penirq=17,penirq_pull=2,speed=1000000,keep_vref_on=1,swapxy=1,pmax=255,xohms=60,xmin=200,xmax=3900,ymin=200,ymax=3900
dtoverlay=elecrow35a,speed=22000000,fps=60

- Finally, I restart and the screen worked :)

///EDIT///
If you have problems to start the Desktop Enviroment (for example, Mate), you can add this lines to /ect/X11/xorg.conf.d/99-calibration.conf

Code: Select all

Section "Device"
# WaveShare SpotPear 3.5", framebuffer 1
Identifier "uga"
driver "fbdev"
Option "fbdev" "/dev/fb1"
Option "ShadowFB" "off"
EndSection

Section "Monitor"
# Primary monitor. WaveShare SpotPear 480x320
Identifier "WSSP"
EndSection

Section "Screen"
Identifier "primary"
Device "uga"
Monitor "WSSP"
EndSection

Section "ServerLayout"
Identifier "default"
Screen 0 "primary" 0 0
EndSection

Before to add the previous code, keep the calibration lines you got during the first installation of the driver, before to repeat the calibration process.

You can find other compatible drivers in other websites, like this one. You can test to know which is better for your screen.

Hope this will be useful!
Alex.
