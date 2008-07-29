# $Id: Makefile,v 1.1 2004-08-30 06:41:45 cvs Exp $


SHELL = /bin/sh
DESTDIR = 



FAQ2.html:  FAQ2.sgml FAQ.dsl 
	db2html -d `pwd`/FAQ.dsl -o . FAQ2.sgml

FAQ2: FAQ2.html
	links -dump FAQ2.html > FAQ2


Build.html:  Build.sgml Build.dsl 
	db2html -d `pwd`/Build.dsl -o . Build.sgml

Build: Build.html
	links -dump Build.html  > Build

