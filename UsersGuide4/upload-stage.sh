#!/bin/sh

DESTINATION="webcontent@citadel02.netcitadel.com:/var/www/html/fwbuilder-stage/4.0/docs/users_guide"

rsync -avuzr --rsh=ssh \
    --exclude upload.sh \
    --exclude .svn \
    --exclude '*.py' \
    --exclude '*.psd' \
    --exclude '\#*\#' \
    --exclude .DS_Store html/* $DESTINATION
