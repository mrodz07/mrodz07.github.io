#!/bin/sh
HOST=srvr
DIR=/usr/share/nginx/mariorodriguez.xyz   # the directory where your web site files should go

hugo && rsync -avz --delete public/ ${HOST}:${DIR}

exit 0