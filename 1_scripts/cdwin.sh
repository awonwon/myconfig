#!/bin/bash

cdwin() {
  linuxhome='/home/gtw';
  winroot='/mnt/c';
  winhome="$winroot/Users/GTW";
  
  path=$1;
  
  if [ ! -n "$path" ]; then
    return;
  fi

  ## cdwin ~ will cd to $winhome
  if [ $path = $linuxhome ]; then
    cd $winhome;

  ## cdwin / will cd to $winroot
  elif [ $path = '/' ]; then
    cd $winroot;

  ## cdwin ~/xxx will cd to $winhome/xxx
  elif [[ $path =~ ^"$linuxhome" ]]; then
    winpath="${path/$linuxhome/$winhome}";
    cd $winpath;
  fi
}


## TODO: winpwd
