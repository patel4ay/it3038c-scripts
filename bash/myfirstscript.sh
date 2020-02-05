#!/bin/bash
#This script will email us our user, IP, hostname, and today's date.
emailaddress="aanshi2000@yahoo.com"
Today=
Ip=
Content="User $USER from IP address $IP on $DATE running machine type of $MACHINETYPE with hostname $HOSTNAME"
mail -s "IT3038C Linux IP" $emailaddress 
$(echo -e $content)
