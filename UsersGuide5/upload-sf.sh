#!/bin/sh
# This script updates contents on the production web server at SourceForge

DESTINATION="vkurland@web.sourceforge.net:/home/project-web/fwbuilder/htdocs/4.0/docs/users_guide5/"

wd=$(pwd)

test -d html && {
    cd html

    find . -name '*.html' | while read f; do
        echo "html -> shtml in $f"
        sed -i.bak 's/\.html/.shtml/' $f
        g=$(echo $f | sed 's/\.html/.shtml/')
        mv $f $g
        rm -f $f
    done

    rsync -avuzr --rsh=ssh --delete \
        --delete-after \
        --exclude 'upload*.sh' \
        --exclude .svn \
        --exclude '*.py' \
        --exclude '*.psd' \
        --exclude '\#*\#' \
        --exclude '*.html.bak' \
        --exclude .DS_Store . $DESTINATION

    cd $wd
}

test -f UsersGuide5.pdf && {
    rsync -avuzr --rsh=ssh --delete --delete-after UsersGuide5.pdf $DESTINATION
}

