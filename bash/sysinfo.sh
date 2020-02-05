#!/bin/bash
#This script will email us our user, IP, hostname and today's date.
emailaddress=aanshi2000@yahoo.com
today=
ip=
content="User $USER"
mail -s "IT3038C Linux IP" $aanshi2000@yahoo.com 
$(echo -e $content)
