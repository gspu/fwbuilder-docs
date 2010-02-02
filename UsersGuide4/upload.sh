#!/bin/sh

DESTINATION="root@citadel02.netcitadel.com:/var/www/html/fwbuilder/docs/users_guide"

rsync -avuzr --rsh=ssh \
    --exclude upload.sh \
    --exclude .svn \
    --exclude '*.py' \
    --exclude '*.psd' \
    --exclude '\#*\#' \
    --exclude .DS_Store html/* $DESTINATION