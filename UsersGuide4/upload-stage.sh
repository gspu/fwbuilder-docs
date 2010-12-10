#!/bin/sh

DESTINATION="webcontent@citadel02.netcitadel.com:/var/www/html/users_guide-stage"

rsync -avuzr --rsh=ssh \
    --exclude upload.sh \
    --exclude .svn \
    --exclude '*.py' \
    --exclude '*.psd' \
    --exclude '\#*\#' \
    --exclude .DS_Store html/* $DESTINATION
