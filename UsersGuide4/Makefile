# $Id: Makefile,v 1.8 2003-04-06 02:24:17 vadim Exp $

.PHONY: all html pdf

all:  html  pdf

clean:
	rm -rf html pdf
	rm -f $(STAGEDIR)/*



#	docbook2html -d `pwd`/html.dsl -o html UsersGuide4.xml


html:   UsersGuide4.xml html.dsl html/index.html

html/index.html:   UsersGuide4.xml html.xsl
	rm -rf html
	mkdir -p html
	cp *.jpg html/
	cp *.png html/
	cp *.css html/
	XML_CATALOG_FILES="catalog.xml" xsltproc html.xsl UsersGuide4.xml
	chmod +x html/*.html


pdf:   UsersGuide4.xml pdf/UsersGuide4.pdf

pdf/UsersGuide4.pdf: UsersGuide4.xml 
	rm -rf pdf
	mkdir -p pdf
	cp *.jpg pdf/
	cp *.png pdf/
	docbook2pdf -o pdf UsersGuide4.xml

