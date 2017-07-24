#!/bin/bash

#if keys for ssh need to be generated.Follow below steps on the host machine
echo "Enter the username by which login/ssh needs to be done on every remote-machine: "
read USERNAME

#Genrate ssh-keys
ssh-keygen -t rsa -b 2048

#To retrieve individual hostnames that are comma-separated, passed as an argument 
for hname in $(echo $1 | sed "s/,/ /g")
do
    echo $hname
#Copying ssh-key to remote-machines
    ssh-copy-id $USERNAME@$hname
    echo "ssh-key copied to $hname for passwordless authentication"
done

