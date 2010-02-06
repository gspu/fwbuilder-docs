# $Id: Makefile,v 1.8 2003-04-06 02:24:17 vadim Exp $

SYSTEM := $(shell uname -s)
SOURCES = Introduction.xml \
		Troubleshooting.xml \
		UsersGuide4.xml \
		clusters.xml \
		compile-install-detail.xml \
		cookbook.xml \
		definitions.xml \
		firewall-policies.xml \
		gettingstarted.xml \
		install.xml \
		network-discovery.xml \
		remote-management.xml \
		using-gui.xml \
		working-with-objects.xml
CATALOGS = catalog-Darwin.xml catalog-Linux.xml
HTML_STYLESHEETS = html.xsl
FO_STYLESHEETS = fo.xsl


.PHONY: all html fo pdf stage

all:  html pdf

clean:
	rm -rf html fo
	rm -f $(STAGEDIR)/*



#	docbook2html -d `pwd`/html.dsl -o html UsersGuide4.xml
# XML_DEBUG_CATALOG=1 

stage: html
	./upload-glitch.sh

html: html/index.html 

html/index.html:   $(SOURCES) $(CATALOGS) $(HTML_STYLESHEETS)

	rm -rf html
	mkdir -p html
	cp *.jpg html/
	cp *.png html/
	cp *.css html/
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc --xinclude html.xsl UsersGuide4.xml
	chmod +x html/*.html


fo:   fo/UsersGuide4.fo

fo/UsersGuide4.fo: $(SOURCES) $(CATALOGS) $(FO_STYLESHEETS)
	rm -rf fo
	mkdir -p fo
	cp *.jpg fo/
	cp *.png fo/
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc \
		--xinclude \
		--stringparam fop1.extensions 1  \
		--output fo/UsersGuide4.fo \
		fo.xsl UsersGuide4.xml

#	docbook2pdf -o pdf UsersGuide4.xml

pdf: UsersGuide4.pdf

UsersGuide4.pdf: fo/UsersGuide4.fo
	./fop.sh fo/UsersGuide4.fo UsersGuide4.pdf

