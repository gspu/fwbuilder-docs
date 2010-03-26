# $Id: Makefile,v 1.8 2003-04-06 02:24:17 vadim Exp $

SYSTEM := $(shell uname -s)
SOURCES = Introduction.xml \
		Troubleshooting.xml \
		UsersGuide4.xml \
		clusters.xml \
		interfaces.xml \
		ip_address_management.xml \
		vlan_management.xml \
		bridge_management.xml \
		bonding_interface_management.xml \
		compile-install-detail.xml \
		cookbook.xml \
		definitions.xml \
		firewall-policies.xml \
		gettingstarted.xml \
		install.xml \
		network-discovery.xml \
		remote-management.xml \
		using-gui.xml \
		working-with-objects.xml \
		change-ip-address-in-template.xml \
		policy-cookbook.xml \
		nat-cookbook.xml \
		cluster-cookbook.xml \
		tricks.xml \
		vrrpd_cluster.xml \
		web_server_cluster.xml \
		heartbeat_cluster.xml \
		heartbeat_vlan_cluster.xml \
		heartbeat_dedicated_interface.xml \
		state_sync_conntrackd.xml \
		pf_cluster.xml \
		pix_cluster.xml \
		support_for_specific_firewall_os.xml

CATALOGS = catalog-Darwin.xml catalog-Linux.xml
HTML_STYLESHEETS = html.xsl
FO_STYLESHEETS = fo.xsl


.PHONY: all html fo pdf stage target

all:  html pdf

clean:
	rm -rf html fo
	rm -f $(STAGEDIR)/*

target: target.db


target.db:   $(SOURCES) $(CATALOGS) $(HTML_STYLESHEETS)
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc \
			--stringparam  collect.xref.targets  "only" \
			--xinclude html.xsl \
			UsersGuide4.xml

stage: html
	./upload-glitch.sh

html: html/index.html  target.db

html/index.html:   $(SOURCES) $(CATALOGS) $(HTML_STYLESHEETS)
	rm -rf html
	mkdir -p html
	cp *.jpg html/
	cp *.png html/
	cp *.css html/
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc --xinclude html.xsl \
			UsersGuide4.xml
	chmod +x html/*.html


fo:   fo/UsersGuide4.fo  target.db

fo/UsersGuide4.fo: $(SOURCES) $(CATALOGS) $(FO_STYLESHEETS)
	rm -rf fo
	mkdir -p fo
	cp *.jpg fo/
	cp *.png fo/
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc \
		--xinclude \
		--stringparam fop1.extensions 1  \
		--output fo/UsersGuide4.fo \
		fo.xsl UsersGuide4.xml

#	docbook2pdf -o pdf UsersGuide4.xml

pdf: UsersGuide4.pdf

UsersGuide4.pdf: fo/UsersGuide4.fo
	FOP_OPTS="-Xmx256m" fop fo/UsersGuide4.fo UsersGuide4.pdf

