This directory contains the programs and firmware to operate the Bluetooth
section of the RTL8723BS hardware used on a number of tablets.

The main program is called rtk_hciattach. To build this program, issue the
following command:

make

To install the firmware (only needed once):

sudo make install

Some users have found that an alternate firmware works for them. To try this
firmware, do this command:

sudo cp rtlbt_fw_new /lib/firmware/rtl_bt/rtlbt_fw

To start Bluetooth (needed for each boot), use the command

sudo ~/rtl8723bs_bt/start_bt.sh

Note: The script assumes that the Bluetooth device is attached to /dev/ttyS4.
That may not be correct for your system. To discover the correct serial port,
run 'dmesg | grep tty'. You should see two lines that say "ttyXX at MMIO 0xYYYYYYYY.
Edit start_bt.sh to set the definition of TTY to use the value of XX for the first
of these two lines.

As this command will need to be done everytime the system is rebooted, you
might consider placing this command in the system startup commands. The path
of the command will have to be adjusted.

WARNING: This driver needs the H5 protocol, which is built into kernels 3.12
and later. If you need to use an earlier kernel, raise an issue on this repo.

Larry Finger

