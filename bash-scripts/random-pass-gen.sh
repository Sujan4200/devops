#!/bin/bash

######################################################################
##
##   Random Password Generator
##   Written By: Ankit Ojha
##   URL: https://ankitojha.com.np
##   Update on: Mar 26, 2023
##
######################################################################
echo "--------------------------------------"
echo "!! STRONG RANDOM PASSWORD GENERATOR !!"
echo "--------------------------------------"
echo ""
read -p "Please enter the length of the desired password:" PASS_LENGTH
for p in $(seq 1 5);
do	
	echo ''
	echo 'Password:' $p
	echo '-------------'
        openssl rand -base64 48 | cut -c1-$PASS_LENGTH
	echo ''
done

