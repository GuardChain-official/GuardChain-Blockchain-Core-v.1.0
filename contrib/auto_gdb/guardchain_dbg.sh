#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.guardchaincore/guardchaind.pid file instead
guardchain_pid=$(<~/.guardchaincore/testnet3/guardchaind.pid)
sudo gdb -batch -ex "source debug.gdb" guardchaind ${guardchain_pid}
