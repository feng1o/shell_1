#!/bin/bash
echo -e "\e[1;33m]"
comm  ./a.txt   ./b.txt
echo -e "\e[1;32]"
comm  ./a.txt   ./b.txt -2 -3 
echo -e "\e[1;35m]"
comm  ./a.txt   ./b.txt -1 -2 
