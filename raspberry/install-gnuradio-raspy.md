# Install Gnu Radio on raspberry pi

- Install https://osmocom.org/projects/rtl-sdr/wiki/Rtl-sdr
	- Please install sudo apt-get install libusb-1.0-0-dev

#- Install gnuradio from src
#	- Install libboost-all-dev with apt get

#- Install https://osmocom.org/projects/gr-osmosdr/wiki
#	- Please checkout branch matched to gnu radio version 3.7
#	- use cmake with params "cmake ../ -DINSTALL_UDEV_RULES=ON"


sudo apt get install gnuradio
sudo apt-get install gr-osmosdr

(no qt interface required)
