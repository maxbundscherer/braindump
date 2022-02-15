# Install Gnu Radio on raspberry pi

- Install https://osmocom.org/projects/rtl-sdr/wiki/Rtl-sdr
	- Please install sudo apt-get install libusb-1.0-0-dev
	- Build from src with cmake ../ -DINSTALL_UDEV_RULES=ON -DDETACH_KERNEL_DRIVER=ON

#- Install gnuradio from src
#	- Install libboost-all-dev with apt get

#- Install https://osmocom.org/projects/gr-osmosdr/wiki
#	- Please checkout branch matched to gnu radio version 3.7
#	- use cmake with params "cmake ../ -DINSTALL_UDEV_RULES=ON"


sudo apt get install gnuradio
sudo apt-get install gr-osmosdr


#- Install gnuradio from source
#- Download boost for raspberry if you cant install gnuradio from source
#	tar xvfo boost_tbd.tar.bz2
#	cd boot_tbd
#	./bootstrap
#	sudo ./b2 install

(no qt interface required)
