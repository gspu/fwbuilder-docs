# $Id: Makefile,v 1.8 2003-04-06 02:24:17 vadim Exp $

SYSTEM := $(shell uname -s)
SOURCES = gettingstarted_overview.xml \

CATALOGS = catalog-Darwin.xml catalog-Linux.xml
HTML_STYLESHEETS = html.xsl
FO_STYLESHEETS = fo.xsl
SOURCE_FILE = gettingstarted_overview.xml
FO_FILE = gettingstarted_overview.fo
PDF_FILE = gettingstarted_overview.pdf


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
      $(SOURCE_FILE)

stage: html
	./upload-glitch.sh

html: html/index.html  target.db

html/index.html:   $(SOURCES) $(CATALOGS) $(HTML_STYLESHEETS)
	rm -rf html
	mkdir -p html/images
	cp images/*.png html/images
	cp *.css html/
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc \
      --stringparam target.database.document "olinkdb.xml" \
      --xinclude html.xsl $(SOURCE_FILE) 
	chmod +x html/*.html


fo:   fo/Getting-Started-ASA-PIX.fo  target.db

fo/$(FO_FILE): $(SOURCES) $(CATALOGS) $(FO_STYLESHEETS)
	rm -rf fo
	mkdir -p fo/images
	cp images/*.png fo/images
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc \
		--xinclude \
		--stringparam fop1.extensions 1  \
		--output fo/$(FO_FILE) \
		fo.xsl $(SOURCE_FILE) 

pdf: $(PDF_FILE) 

$(PDF_FILE): fo/$(FO_FILE)
	FOP_OPTS="-Xmx256m" fop fo/$(FO_FILE) $(PDF_FILE) 

