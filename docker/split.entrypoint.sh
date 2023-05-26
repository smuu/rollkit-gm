#!/bin/sh

# print all commands before executing them
set -x

cp -r /home/rollkit/.gm_backup/* /home/rollkit/.gm

exec gmd start --with-tendermint=false --address=tcp://0.0.0.0:26658
