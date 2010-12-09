#!/bin/sh

DESTINATION="webcontent@citadel02.netcitadel.com:/var/www/html/users_guide"

cd html && {
    rsync -avuzr --rsh=ssh \
        --delete-after \
        --exclude upload.sh \
        --exclude .svn \
        --exclude '*.py' \
        --exclude '*.psd' \
        --exclude '\#*\#' \
        --exclude .DS_Store . $DESTINATION
}
