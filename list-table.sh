#!/bin/sh

cat | sed 's!<xref[^>]*>!&</xref>!' |
xsltproc /home/vadim/tmp/list-table.xslt - |
sed 's!</colspec>!!; s!</xref>!!' |
sed -n '/[a-zA-Z0-9]/ p'





