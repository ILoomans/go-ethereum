#!/bin/sh

BOOTNODE="enode://22f190f2a0690ee87e26e6fa876576249f986f7236c6a51157ecc92ed157c943945d16e311969d2cc7a682d678071b75f18fa4dbb9b27736e99319acb6eb22cd@127.0.0.1:0?discport=30301"
UNLOCK=0xefE756027E36D021B0063CEDf576402C96C8095e

if [[ $PWD != *"scripts"* ]]; then
    cd scripts || exit
fi
cd ..
cd data || exit
echo "Removing all folders except keystore"
rm -rf geth
cd ..
echo "This is a test network not fit for production!!!"
geth --datadir=./data init ./privatenetwork/genesis.json
geth --datadir=data --bootnodes=$BOOTNODE --unlock $UNLOCK --mine --password password.txt --miner.etherbase="$UNLOCK" --http --allow-insecure-unlock





