#!/bin/bash

IFS=":"

while read -r username password userid groupid info homedir shell; do
    IFS="," read -r name id_info <<< "$info"
    
    echo "The user $username is part of the $groupid gang, lives in $homedir and rides $shell. User ID's place is protected by the passcode $password, more info about the user here: $id_info"
done < /etc/passwd