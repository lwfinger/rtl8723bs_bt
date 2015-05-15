This directory contains the programs and firmware to operate the Bluetooth
section of the RTL8723BS hardware used on a number of tablets.

The main program is called rtk_hciattach. To build this program, issue the
following command:

make -f make_hciattach

To install the firmware (only needed once):

sudo make -f make_hciattach install

To start Bluetooth (neede for each boot), use the command

sudo ~/rtl8723bs_bt/start_bt.sh

As this command will need to be done everytime the system is rebooted, you
might consider placing this command in the system startup commands. The path
of the command might have to be adjusted.


WARNING: This driver neede the H5 protocol, which is built into kernels 3.12
and later. If you need to use an earlier kernel, raise an issue for this repo.

Larry Finger

