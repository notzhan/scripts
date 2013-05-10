#!/bin/bash
# vim:fdm=marker
#

syntax=text

if [[ $# -eq 2 ]]; then
    syntax=$2
fi

curl -i -s --data-urlencode "content@$1" -d "poster=Imtxc" -d "syntax=$syntax" http://paste.ubuntu.com > /tmp/paste_tmp 

cat /tmp/paste_tmp |grep Location |awk {'print $2'}

