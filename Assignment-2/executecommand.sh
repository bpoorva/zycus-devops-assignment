#!/bin/bash

set -e

if [ -z "$1" ]
  then
    echo "No argument supplied"
else

        echo "Enter the username by which login/ssh needs to be done on every remote-machine: "
        read USERNAME
        echo "Enter the command to be executed on all machines: "
        read COMMAND
        for hname in $(echo $1 | sed "s/,/ /g")
        do
                echo $hname
                OUTPUT=`ssh $USERNAME@$hname $COMMAND`
                echo "Result of $COMMAND on $hname : $OUTPUT "
        done

fi

