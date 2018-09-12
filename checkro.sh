#!/bin/bash

# Author: https://github.com/DeV1L

# This script checks for filesystems that are read only. 
# If the script returns 0 then the filesystem in read only mode.
# Add User Parameter to Zabbix Agent config (/etc/zabbix/zabbix_agentd.conf)
# It should look like this:
# UserParameter=checkro[*],/etc/zabbix/scripts/checkro.sh $1
mountPoint=$1
if touch $mountPoint/zbx_tmp_file  > /dev/null 2>&1 && rm $mountPoint/zbx_tmp_file > /dev/null 2>&1
        then
                echo 1
        else
                echo 0
fi