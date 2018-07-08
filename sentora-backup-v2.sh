#!/bin/bash
echo 'BackingUp Sentora';
read -p "Server: " srv
read -p "User: " usr

echo 'BackingUp Sentora etc';
ssh $usr@$srv "tar -czvf ~/$usr/etc-sentora.tar.gz /etc/sentora";

echo 'BackingUp Sentora var';
ssh $usr@$srv "tar -czvf ~/$usr/var-sentora.tar.gz /var/sentora"

echo 'Downloading Files';
echo 'Downloading etc Files';
scp $usr@$srv "tar -czvf ~/$usr/etc-sentora.tar.gz ."

echo 'Downloading var Files';
scp $usr@$srv "tar -czvf ~/$usr/var-sentora.tar.gz ."