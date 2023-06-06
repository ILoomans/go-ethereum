#!/bin/bash
# if we are not in the correct path go to it
if [[ $PWD != *"scripts"* ]]; then
    cd scripts
fi
cd ..
cd hardhat
npm i 
npx hardhat run scripts/deploy.ts --network cordaEvmNetwork

