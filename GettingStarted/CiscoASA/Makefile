# $Id: Makefile,v 1.8 2003-04-06 02:24:17 vadim Exp $

SYSTEM := $(shell uname -s)
SOURCES = Getting-Started-ASA-PIX.xml \


CATALOGS = catalog-Darwin.xml catalog-Linux.xml
HTML_STYLESHEETS = html.xsl
FO_STYLESHEETS = fo.xsl


.PHONY: all html fo pdf stage target

all:  html pdf

clean:
	rm -rf html fo
#rm -f $(STAGEDIR)/*

target: target.db


target.db:   $(SOURCES) $(CATALOGS) $(HTML_STYLESHEETS)
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc \
			--stringparam  collect.xref.targets  "only" \
			--xinclude html.xsl \
			Getting-Started-ASA-PIX.xml

stage: html
	./upload-glitch.sh

html: html/index.html  target.db

html/index.html:   $(SOURCES) $(CATALOGS) $(HTML_STYLESHEETS)
	rm -rf html
	mkdir -p html/images
	cp images/*.png html/images
	cp ../shared/images/*.png html/images
	cp *.css html/
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc \
      --stringparam target.database.document "olinkdb.xml" \
      --stringparam chapter.autolabel 0 \
      --xinclude html.xsl Getting-Started-ASA-PIX.xml
	chmod +x html/*.html
	cp html/gs-cisco-asa-pix.html html/index.html


fo:   fo/Getting-Started-ASA-PIX.fo  target.db

fo/Getting-Started-ASA-PIX.fo: $(SOURCES) $(CATALOGS) $(FO_STYLESHEETS)
	rm -rf fo
	mkdir -p fo/images
	cp images/*.png fo/images
	cp ../shared/images/*.png fo/images
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc \
		--xinclude \
		--stringparam fop1.extensions 1  \
		--output fo/Getting-Started-ASA-PIX.fo \
		fo.xsl Getting-Started-ASA-PIX.xml

#	docbook2pdf -o pdf UsersGuide4.xml

pdf: Getting-Started-ASA-PIX.pdf

Getting-Started-ASA-PIX.pdf: fo/Getting-Started-ASA-PIX.fo
	FOP_OPTS="-Xmx256m" fop fo/Getting-Started-ASA-PIX.fo Getting-Started-ASA-PIX.pdf

