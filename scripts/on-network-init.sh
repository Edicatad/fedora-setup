#!/bin/bash
if [[ "$1" == `ip route get 8.8.8.8 | sed -nr 's/.*dev ([^\ ]+).*/\1/p'` ]]
then
        echo "This is the default network interface!"
else
        echo "This isn't the default network interface!"
fi
