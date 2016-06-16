#!/bin/bash
cat multiblanks.txt
cat -s multiblanks.txt

echo 'tr -s '\n'.........................................'
cat multiblanks.txt | tr -s '\n'

cat -n multiblanks.txt
