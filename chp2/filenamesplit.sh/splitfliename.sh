#!/bin/bash

filename="abc.bef.txt"
name=${filename%.*}
echo $name
echo

name=${filename%%.*}
echo $name
echo

name=${filename#*.}
echo $name
echo

name=${filename##*.}
echo $name
