# $Id: Makefile,v 1.8 2003-04-06 02:24:17 vadim Exp $

STAGEDIR= /var/ftp/pub/fwbuilder-manual

.PHONY: all html pdf

all:  html  pdf

clean:
	rm -rf html pdf
	rm -f $(STAGEDIR)/*



html:   UsersGuide.sgml html.dsl html/index.html

html/index.html:   UsersGuide.sgml html.dsl 
	rm -rf html
	mkdir -p html
	cp *.jpg html/
	cp *.png html/
	cp *.css html/
	docbook2html -d `pwd`/html.dsl -o html UsersGuide.sgml



pdf:   UsersGuide.sgml pdf/UsersGuide.pdf

pdf/UsersGuide.pdf: UsersGuide.sgml 
	rm -rf pdf
	mkdir -p pdf
	cp *.jpg pdf/
	cp *.png pdf/
	docbook2pdf -d `pwd`/pdf.dsl -o pdf UsersGuide.sgml

install_html: html
	cp html/* $(STAGEDIR)

install_pdf: pdf
	cp pdf/UsersGuide.pdf $(STAGEDIR)

install: install_html install_pdf
