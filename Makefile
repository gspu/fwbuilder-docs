# $Id: Makefile,v 1.2 2002-09-02 05:30:32 vadim Exp $



all:  html  pdf

clean:
	rm -rf html pdf



html:   Using.sgml Using-html.dsl html/index.html

html/index.html:   Using.sgml Using-html.dsl 
	rm -rf html
	mkdir -p html
	cp *.jpg html/
	cp *.css html/
	db2html -d `pwd`/Using-html.dsl -o html Using.sgml



pdf:   Using.sgml pdf/Using.pdf

pdf/Using.pdf: Using.sgml 
	rm -rf pdf
	mkdir -p pdf
	cp *.jpg pdf/
	db2pdf -d `pwd`/Using-pdf.dsl -o pdf Using.sgml


