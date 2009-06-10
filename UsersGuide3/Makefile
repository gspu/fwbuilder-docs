# $Id: Makefile,v 1.8 2003-04-06 02:24:17 vadim Exp $

.PHONY: all html pdf

all:  html  pdf

clean:
	rm -rf html pdf
	rm -f $(STAGEDIR)/*



html:   UsersGuide3.xml html.dsl html/index.html

html/index.html:   UsersGuide3.xml html.dsl 
	rm -rf html
	mkdir -p html
	cp *.jpg html/
	cp *.png html/
	cp *.css html/
	docbook2html -d `pwd`/html.dsl -o html UsersGuide3.xml



pdf:   UsersGuide3.xml pdf/UsersGuide3.pdf

pdf/UsersGuide3.pdf: UsersGuide3.xml 
	rm -rf pdf
	mkdir -p pdf
	cp *.jpg pdf/
	cp *.png pdf/
	docbook2pdf -d `pwd`/pdf.dsl -o pdf UsersGuide3.xml

