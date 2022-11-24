#!/bin/bash
cd $(dirname $0)
touch repo.txt
curl -s https://api.github.com/users/missemily22/repos?per_page=200 | grep \"clone_url\" | awk '{print $2}' | sed -e 's/"//g' -e 's/,//g' |& tee -a repo.txt
sleep 5  # Waits 5 seconds
curl -s https://api.github.com/users/Greymattersbot/repos?per_page=200 | grep \"clone_url\" | awk '{print $2}' | sed -e 's/"//g' -e 's/,//g' |& tee -a repo.txt
sleep 5  # Waits 5 seconds
curl -s https://api.github.com/users/weebzone/repos?per_page=200 | grep \"clone_url\" | awk '{print $2}' | sed -e 's/"//g' -e 's/,//g' |& tee -a repo.txt
sleep 5  # Waits 5 seconds
curl -s https://api.github.com/users/junedkh/repos?per_page=200 | grep \"clone_url\" | awk '{print $2}' | sed -e 's/"//g' -e 's/,//g' |& tee -a repo.txt
sleep 5  # Waits 5 seconds
curl -s https://api.github.com/users/JohnWickKeanue/repos?per_page=200 | grep \"clone_url\" | awk '{print $2}' | sed -e 's/"//g' -e 's/,//g' |& tee -a repo.txt
sleep 5  # Waits 5 seconds
awk '!seen[$0]++' repo.txt > list.txt