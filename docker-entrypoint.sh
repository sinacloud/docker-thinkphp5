#!/bin/sh
# if the file not exist, execute copy 
if [ ! -f "/var/www/html/package.json" ]; then 
    cp -rT /tp5 /var/www/html 
fi

exec "$@"
