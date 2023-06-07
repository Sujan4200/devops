#!/bin/bash

######################################################################
##
##   GO Installation Script
##   Written By: Ankit Ojha
##   URL: https://ankitojha.com.np
##   Updated on: Jun 7, 2023
##
######################################################################


echo '# INSTALLING GO:'
echo '################'
echo ''
curl -OL https://golang.org/dl/go1.16.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.16.7.linux-amd64.tar.gz
echo ''
echo '# SETTING GO PATHS:'
echo '###################'
echo ''
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
source ~/.profile
echo ''
echo '# CHECK GO VER:'
echo '###############'
go version
