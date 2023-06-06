if [[ $PWD != *"scripts"* ]]; then
    cd scripts
fi
cd ..
# cd data
# echo "Removing all folders except keystore"
rm -rf data/geth
# cd ..
# echo "This is a test network not fit for production!!!"
echo $PWD
# cd build/bin
./build/bin/geth --datadir=./data init ./privatenetwork/genesis.json
./build/bin/geth --datadir=data --bootnodes="enode://22f190f2a0690ee87e26e6fa876576249f986f7236c6a51157ecc92ed157c943945d16e311969d2cc7a682d678071b75f18fa4dbb9b27736e99319acb6eb22cd@127.0.0.1:0?discport=30301" --unlock 0xefE756027E36D021B0063CEDf576402C96C8095e --mine --password password.txt --miner.etherbase=0xefE756027E36D021B0063CEDf576402C96C8095e --http --allow-insecure-unlock





