#!/bin/bash
bldred=${txtbld}$(tput setaf 1)
txtrst=$(tput sgr0)
printf "\n\n${bldred}\t _______  _______  _______ _________ _______\n"
printf '\t(  ____ \(  ___  )(  ____ \\\\__   __/(  ___  )\n'
	printf "\t| (    \/| (   ) || (    \/   ) (   | (   ) |\n"
	printf "\t| (__    | |   | || (_____    | |   | |   | |\n"
	printf "\t|  __)   | |   | |(_____  )   | |   | |   | |\n"
	printf "\t| (      | |   | |      ) |   | |   | |   | |\n"
	printf "\t| (____/\| (___) |/\____) |___) (___| (___) |\n"
  printf "\t(_______/(_______)\_______)\_______/(_______)\n${txtrst}"
printf "\n${bldred}\t _______  _     _  _______  _______ \n"
        	 printf '\t/ _   _ \| |   | )/ _   _ \(  ____ \ \n'
        	 printf "\t\/ | | \/| |   | |\/ | | \/| (    \/\n"
        	 printf "\t   | |   | |   | |   | |   | (_____ \n"
        	 printf "\t   | |   | |   | |   | |   (_____  )\n"
        	 printf "\t   | |   | |   | |   | |         ) |\n"
        	 printf "\t___| |___| (___) |___| |___/\____) |\n"
           printf "\t\_______/(_______)\_______/\_______)\n\n${txtrst}"

#EOSIO - Tutorial 1
#1. Download and build all packages
#git clone https://github.com/EOSIO/eos --recursive
#cd eos
#./eosio_build.sh

# 2. Install
#cd build
#sudo make install

# 3. Create genesis file
#cd ~/Desktop/eos
#nodeos --extract-genesis-json genesis.json

# 4. Nodeos first run
#nodeos -e -p eosio --genesis-json genesis.json --delete-all-blocks --plugin eosio::chain_api_plugin --plugin eosio::history_api_plugin

# 5. Configure
#Edit and save ~/.local/share/eosio/nodeos/config/config.ini
#...
#enable-stale-production = true
#...
#producer-name = eosio
#...
#plugin = eosio::producer_plugin
#plugin = eosio::wallet_api_plugin
#plugin = eosio::chain_api_plugin
#plugin = eosio::http_plugin
#plugin = eosio::history_api_plugin

# 6. Start nodeos
#cd ~/Desktop/eos
#nodeos

# 7. Create default wallet
#cleos wallet create

# 8. How to check wallets and keys
#cleos wallet list keys

# 9. Set BIOS contract
#cd ~/Desktop/eos
#cleos set contract eosio build/contracts/eosio.bios -p eosio@active

# 10. How to create key
#cleos create key

# 11. Create (named) wallet for user..1
#cleos wallet create -n user01-wallet01

# 12. Import created keys (owner key and active key)
#cleos wallet import -n user01-wallet01 5JDRyqykySoRnfR5gJ3K2MbkyUBonNW43grRfab5KmDkv5Vr1vB
#cleos wallet import -n user01-wallet01 5Khx1HhkqBsx44nSi41dj9Bfz8isCUVb8TYogTm2EwU4shaGkSY

# 13. Unlock default wallet
#cleos wallet unlock

# 14. Create new account with default account (eosio)
#cleos create account eosio user..1 EOS6e8Bv7F3wDDS6JnwPyAoeC9Wft2V6KZgoEUjauAMru1KtR6Ehp EOS6vZh8hdVY22YjZvunnmvobjWsXL1yx6qBzRxn2S6Fr88ewcUPc

# 15. How to delete wallets and all blocks if necessary
#Delete genesis.json file in ~/Desktop/eos
#cleos wallet stop
#nodeos --genesis-json genesis.json --delete-all-blocks
#Delete wallets in ~/eosio-wallet
