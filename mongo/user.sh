#!/usr/bin/env bash

echo "USER"

RET=1
while [[ RET -ne 0 ]]; do
    echo "=> Waiting for confirmation of MongoDB service startup"
    sleep 1
    mongo admin --eval "help" >/dev/null 2>&1
    RET=$?
done

sleep 5

echo "=> Creating an ${USER} user with a ${_word} password in MongoDB"
mongo admin --eval "db.createUser({user: 'mikus', pwd: 'mikus', roles:[{role:'root',db:'footdata'}]});"
mongo admin --eval "db.auth('mikus','mikus');"
mongo admin -u Mathiisss -p MewFourt-2 << EOF
use Hypertube
db.createUser({user: 'mikus', pwd: 'mikus', roles:[{role:'userAdmin',db:'footdata'}, {role:'readWrite',db:'footdata'}]})
EOF