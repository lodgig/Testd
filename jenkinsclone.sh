#!/bin/bash

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=14TBZlS-CyZbbCRi0c7LZZSNjqiJlEgn7' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=14TBZlS-CyZbbCRi0c7LZZSNjqiJlEgn7" -O jenkinscopy.tar && rm -rf /tmp/cookies.txt

sudo tar -xvf jenkinscopy.tar -C "/var/lib/"
chown -R jenkins:jenkins /var/lib/jenkins
sudo rm -R /var/lib/jenkins/.ssh/
sudo systemctl restart jenkins