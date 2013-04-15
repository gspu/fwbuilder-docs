#!/bin/sh
# This script updates contents on the production web server at SourceForge

DESTINATION="vkurland@web.sourceforge.net:/home/project-web/fwbuilder/htdocs/4.0/docs/users_guide5/"

cd html && {


    find . -name '*.html' | while read f; do
        echo "html -> shtml in $f"
        sed -i.bak 's/\.html/.shtml/' $f
        g=$(echo $f | sed 's/\.html/.shtml/')
        mv $f $g
        rm -f $f
    done

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

