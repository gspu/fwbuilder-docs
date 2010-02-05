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

STYLESHEETS = html.xsl


.PHONY: all html pdf

all:  html  pdf

clean:
	rm -rf html pdf
	rm -f $(STAGEDIR)/*



#	docbook2html -d `pwd`/html.dsl -o html UsersGuide4.xml
# XML_DEBUG_CATALOG=1 

html: html/index.html 

html/index.html:   $(SOURCES) $(CATALOGS) $(STYLESHEETS)

	rm -rf html
	mkdir -p html
	cp *.jpg html/
	cp *.png html/
	cp *.css html/
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc --xinclude html.xsl UsersGuide4.xml
	chmod +x html/*.html


pdf:   UsersGuide4.xml pdf/UsersGuide4.pdf

pdf/UsersGuide4.pdf: UsersGuide4.xml 
	rm -rf pdf
	mkdir -p pdf
	cp *.jpg pdf/
	cp *.png pdf/
	docbook2pdf -o pdf UsersGuide4.xml

