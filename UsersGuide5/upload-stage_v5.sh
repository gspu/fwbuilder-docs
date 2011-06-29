#!/bin/sh

DESTINATION="webcontent@citadel02.netcitadel.com:/var/www/users_guide_stage_v5"

cd html && {
    rsync -avuzr --rsh=ssh --delete \
        --exclude upload.sh \
        --exclude upload-stage.sh \
        --exclude upload-stage_v5.sh \
        --exclude .svn \
        --exclude '*.py' \
        --exclude '*.psd' \
        --exclude '\#*\#' \
        --exclude .DS_Store . $DESTINATION
}
