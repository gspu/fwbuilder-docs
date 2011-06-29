#!/bin/sh

DESTINATION="webcontent@citadel02.netcitadel.com:/var/www/users_guide5"

cd html && {
    rsync -avuzr --rsh=ssh --delete \
        --delete-after \
        --exclude upload.sh \
        --exclude upload-stage.sh \
        --exclude .svn \
        --exclude '*.py' \
        --exclude '*.psd' \
        --exclude '\#*\#' \
        --exclude .DS_Store . $DESTINATION
}
