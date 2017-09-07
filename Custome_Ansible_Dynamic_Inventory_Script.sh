#!/bin/bash
HOSTS=`curl http://192.168.121.103/ |sed -n -e 'H;${x;s/\n/","/g;s/^,//;p;}'`
echo '
{
  "all": {
    "hosts": ["'$HOSTS'"]
  }
}
'
