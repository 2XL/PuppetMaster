#!/usr/bin/env bash

echo '----------------------------------------------------'

sudo apt-get --yes update
sudo apt-get --yes upgrade
sudo apt-get --yes install puppet

echo '----------------------------------------------------'
puppet module install puppetlabs-vcsrepo

# startup, clone repo
echo '----------------------------------------------------'
pwd
cd
git clone https://github.com/2XL/doFoo.git /tmp

echo '----------------------------------------------------'

ls -l /tmp