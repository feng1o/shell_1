#!/bin/bash
touch suidfile
chmod 770 suidfile
chmod u+s suidfile

ls -l
