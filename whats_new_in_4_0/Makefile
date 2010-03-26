# $Id: Makefile,v 1.8 2003-04-06 02:24:17 vadim Exp $

SYSTEM := $(shell uname -s)
SOURCES = whats_new_in_4_0.xml


CATALOGS = catalog-Darwin.xml catalog-Linux.xml
OLINKDB = olinkdb.xml
HTML_STYLESHEETS = html.xsl
FO_STYLESHEETS = fo.xsl


.PHONY: all html fo pdf stage

all:  html pdf

clean:
	rm -rf html fo
	rm -f $(STAGEDIR)/*


stage: html
	./upload-glitch.sh

html: html/index.html 

html/index.html:   $(SOURCES) $(CATALOGS) $(OLINKDB) $(HTML_STYLESHEETS)

	rm -rf html
	mkdir -p html
	-cp *.png html/
	-cp *.css html/
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc \
		--stringparam target.database.document "olinkdb.xml" \
		--stringparam current.docid "UsersGuide4" \
		--xinclude html.xsl \
		whats_new_in_4_0.xml



