# $Id: Makefile,v 1.4 2003-02-01 23:56:28 vadim Exp $

STAGEDIR= /var/ftp/pub/FWBuilder-Manual

.PHONY: all html pdf

all:  html  pdf

clean:
	rm -rf html pdf



html:   Using.sgml Using-html.dsl html/index.html

html/index.html:   Using.sgml Using-html.dsl 
	rm -rf html
	mkdir -p html
	cp *.jpg html/
	cp *.png html/
	cp *.css html/
	docbook2html -d `pwd`/Using-html.dsl -o html Using.sgml



pdf:   Using.sgml pdf/Using.pdf

pdf/Using.pdf: Using.sgml 
	rm -rf pdf
	mkdir -p pdf
	cp *.jpg pdf/
	cp *.png pdf/
	docbook2pdf -d `pwd`/Using-pdf.dsl -o pdf Using.sgml


install: html pdf
	rm -f $(STAGEDIR)/*
	cp html/* $(STAGEDIR)
	cp pdf/Using.pdf $(STAGEDIR)
