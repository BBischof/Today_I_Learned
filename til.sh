#!/bin/bash

echo "Create a factlet named '$1' containing '$2'?"
read -r -p "Are you sure? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
#    echo "said yes"
    source ./config
    name="${1// /_}"
    now="$(date +'%m_%d_%Y')"
    #echo $now
    {
    	mkdir $factlet_dir/$now/
	} &> /dev/null
    printf "#  Today I learned about: $1 \n \n$2 \n \n...and now, you've learned that too!\n" > $factlet_dir/$now/$name.md
else
    echo "O.K.; keep thinking!"
fi