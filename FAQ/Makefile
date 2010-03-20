# $Id: Makefile,v 1.1 2004-08-30 06:41:45 cvs Exp $


SHELL = /bin/sh
DESTDIR = 


SYSTEM := $(shell uname -s)
SOURCES = FAQ4.xml

CATALOGS = catalog-Darwin.xml catalog-Linux.xml
HTML_STYLESHEETS = html.xsl

.PHONY: all html

all:  html

clean:
	rm -rf html
	rm -f $(STAGEDIR)/*

html: FAQ4.html 

FAQ4.html:   $(SOURCES) $(CATALOGS) $(HTML_STYLESHEETS)
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc --xinclude html.xsl FAQ4.xml > FAQ4.html


