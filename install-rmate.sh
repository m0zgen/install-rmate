#!/bin/bash
# Cretaed by Yevgeniy Gonvharov, https://sys-adm.in
# Install rmate for subl. Reference:
# https://sys-adm.in/sections/os-nix/848-udalennaya-mashina-server-ssh-redaktirovanie-fajlov-v-sublimetext.html

function install
{
  wget -O /usr/local/bin/rmate https://raw.githubusercontent.com/aurora/rmate/master/rmate
  chmod a+x /usr/local/bin/rmate
  echo "Rmate installed!"
}


if rpm -qa | grep "wget" > /dev/null 2>&1
  then
    install
  else
    echo "Wget does nnot found. Installing wget..."
    yum install wget -y
    install
fi

