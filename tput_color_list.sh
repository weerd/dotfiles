#!/usr/bin/env bash

for i in {0..255}; do 
  tput setab $i; 
  printf " %s      " "$i";
  tput setab 0;
done;

printf "\n"