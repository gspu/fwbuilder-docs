# $Id: Makefile,v 1.1 2002-08-31 02:56:13 vadim Exp $



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
	db2pdf -o pdf Using.sgml


