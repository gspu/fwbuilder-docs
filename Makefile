# $Id: Makefile,v 1.3 2002-09-13 17:52:50 vadim Exp $


.PHONY: all html pdf

.PHONY:  html/index.html pdf/Using.pdf

all:  html  pdf

clean:
	rm -rf html pdf



html:   Using.sgml Using-html.dsl html/index.html

html/index.html:   Using.sgml Using-html.dsl 
	rm -rf html
	mkdir -p html
	cp *.jpg html/
	cp *.css html/
	docbook2html -d `pwd`/Using-html.dsl -o html Using.sgml



pdf:   Using.sgml pdf/Using.pdf

pdf/Using.pdf: Using.sgml 
	rm -rf pdf
	mkdir -p pdf
	cp *.jpg pdf/
	docbook2pdf -d `pwd`/Using-pdf.dsl -o pdf Using.sgml


