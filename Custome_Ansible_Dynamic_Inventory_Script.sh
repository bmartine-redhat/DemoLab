#!/bin/bash
HOSTS=`curl http://10.32.170.24/ucmdb/ | awk -vORS=, '{ print $1 }' | sed 's/,$/\n/'`
echo '
{
    "dbgroup": {
        "hosts": ['$HOSTS'],
        "vars": {
            "type": "Postgres Database"
        }
    }
}
'
