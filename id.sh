#!/bin/bash
echo -n "uid=$UID($USER) `cat /etc/group | grep "^$USER:" | awk -F : '{print "gid="$3"("$1")"}'` groups=" 

for var in `groups`; do echo "$(cat /etc/group | grep "^$var:" | awk -F : '{print $3 "("$1"),"}')"  ; done | xargs | sed "s/ //g" | sed "s/,$//g"
