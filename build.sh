#!/bin/bash

pico8_path="/home/barrett/Programming/pico-8/"
pico8_carts="/home/barrett/.lexaloffle/pico-8/carts"

if [ ! -d "$pico8_path" ] ; then
  echo "Could not find PICO8 directory: $pico8_path" ; exit
fi

if [ $# -eq 0 ]; then
  echo "No arguments given"
else
  pushd "$pico8_path" > /dev/null
  ./pico8 -windowed 1 -run "$pico8_carts/$1" || "Error occurred running $1"
  popd > /dev/null
fi
exit