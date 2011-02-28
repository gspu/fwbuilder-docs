
DESTINATION="webcontent@citadel02.netcitadel.com:/var/www/gs_stage/CiscoASA/"

cd html && {
    rsync -avuzr --rsh=ssh --delete \
        --delete-after \
        --exclude upload.sh \
        --exclude upload-stage.sh \
        --exclude .svn \
        --exclude '*.py' \
        --exclude '*.psd' \
        --exclude '*.graffle' \
        --exclude '\#*\#' \
        --exclude .DS_Store \
        $* . $DESTINATION
}
