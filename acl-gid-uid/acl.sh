#!/bin/bash
if [ -e aclfile ]
then
rm  aclfile
fi

touch aclfile
chown  root:root aclfile
chmod 770 aclfile

setfacl -m u:win8:x  aclfile

