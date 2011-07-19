# $Id: Makefile,v 1.8 2003-04-06 02:24:17 vadim Exp $

SYSTEM := $(shell uname -s)
SOURCES = Introduction.xml \
		troubleshooting/Troubleshooting.xml \
		appendix/Appendix.xml \
		UsersGuide5.xml \
		cluster_config/clusters.xml \
		interface_config/interfaces.xml \
		compile_install/compile-install-detail.xml \
		cookbook/cookbook.xml \
		definitions.xml \
		firewall_policies/firewall-policies.xml \
		getting_started/gettingstarted.xml \
		installation/install.xml \
		network_discovery/network-discovery.xml \
		remote_management/remote-management.xml \
		fwbuilder_gui/using-gui.xml \
		objects/working-with-objects.xml \
		firewall_os/support_for_specific_firewall_os.xml \
		configlets/configlets.xml \


CATALOGS = catalog-Darwin.xml catalog-Linux.xml
HTML_STYLESHEETS = html.xsl
FO_STYLESHEETS = fo.xsl


.PHONY: all html fo pdf stage target

all:  html pdf

clean:
	rm -rf html fo
#rm -f $(STAGEDIR)/*

target: target.db


target.db:   $(SOURCES) $(CATALOGS) $(HTML_STYLESHEETS)
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc \
			--stringparam  collect.xref.targets  "only" \
			--xinclude html.xsl \
			UsersGuide5.xml

stage: html
	./upload-glitch.sh

html: html/index.html  target.db

html/index.html:   $(SOURCES) $(CATALOGS) $(HTML_STYLESHEETS)
	rm -rf html
	mkdir -p html
	mkdir -p html/getting_started/images
	mkdir -p html/fwbuilder_gui/images
	mkdir -p html/objects/images
	mkdir -p html/network_discovery/images
	mkdir -p html/firewall_policies/images
	mkdir -p html/cluster_config/images
	mkdir -p html/interface_config/images
	mkdir -p html/compile_install/images
	mkdir -p html/firewall_os/images
	mkdir -p html/configlets/images
	mkdir -p html/cookbook/change_template/images
	mkdir -p html/cookbook/policy_rules/images
	mkdir -p html/cookbook/nat_rules/images
	mkdir -p html/cookbook/cluster/images
	mkdir -p html/cookbook/traffic_shaping/images
	mkdir -p html/cookbook/useful_tricks/images
	mkdir -p html/troubleshooting/images
	cp *.png html/
	cp getting_started/images/*.png html/getting_started/images
	cp fwbuilder_gui/images/*.png html/fwbuilder_gui/images
	cp objects/images/*.png html/objects/images
	cp objects/images/*.jpg html/objects/images
	cp network_discovery/images/*.png html/network_discovery/images
	cp firewall_policies/images/*.png html/firewall_policies/images
	cp cluster_config/images/*.png html/cluster_config/images
	cp interface_config/images/*.png html/interface_config/images
	cp compile_install/images/*.png html/compile_install/images
	cp firewall_os/images/*.png html/firewall_os/images
	cp configlets/images/*.png html/configlets/images
	cp cookbook/change_template/images/*.png html/cookbook/change_template/images
	cp cookbook/policy_rules/images/*.png html/cookbook/policy_rules/images
	cp cookbook/nat_rules/images/*.png html/cookbook/nat_rules/images
	cp cookbook/traffic_shaping/images/*.png html/cookbook/traffic_shaping/images
	cp cookbook/cluster/images/*.png html/cookbook/cluster/images
	cp cookbook/useful_tricks/images/*.png html/cookbook/useful_tricks/images
	cp troubleshooting/images/*.png html/troubleshooting/images
	cp *.css html/
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc --xinclude html.xsl \
			UsersGuide5.xml
	chmod +x html/*.html


fo:   fo/UsersGuide5.fo  target.db

fo/UsersGuide5.fo: $(SOURCES) $(CATALOGS) $(FO_STYLESHEETS)
	rm -rf fo
	mkdir -p fo
	mkdir -p fo/getting_started/images
	mkdir -p fo/fwbuilder_gui/images
	mkdir -p fo/objects/images
	mkdir -p fo/network_discovery/images
	mkdir -p fo/firewall_policies/images
	mkdir -p fo/cluster_config/images
	mkdir -p fo/interface_config/images
	mkdir -p fo/compile_install/images
	mkdir -p fo/configlets/images
	mkdir -p fo/cookbook/change_template/images
	mkdir -p fo/cookbook/policy_rules/images
	mkdir -p fo/cookbook/nat_rules/images
	mkdir -p fo/cookbook/cluster/images
	mkdir -p fo/cookbook/traffic_shaping/images
	mkdir -p fo/cookbook/useful_tricks/images
	mkdir -p fo/troubleshooting/images
	cp *.png fo/
	cp getting_started/images/*.png fo/getting_started/images
	cp fwbuilder_gui/images/*.png fo/fwbuilder_gui/images
	cp objects/images/*.png fo/objects/images
	cp objects/images/*.jpg fo/objects/images
	cp network_discovery/images/*.png fo/network_discovery/images
	cp firewall_policies/images/*.png fo/firewall_policies/images
	cp cluster_config/images/*.png fo/cluster_config/images
	cp interface_config/images/*.png fo/interface_config/images
	cp compile_install/images/*.png fo/compile_install/images
	cp configlets/images/*.png fo/configlets/images
	cp cookbook/change_template/images/*.png fo/cookbook/change_template/images
	cp cookbook/policy_rules/images/*.png fo/cookbook/policy_rules/images
	cp cookbook/nat_rules/images/*.png fo/cookbook/nat_rules/images
	cp cookbook/traffic_shaping/images/*.png fo/cookbook/traffic_shaping/images
	cp cookbook/cluster/images/*.png fo/cookbook/cluster/images
	cp cookbook/useful_tricks/images/*.png fo/cookbook/useful_tricks/images
	cp troubleshooting/images/*.png fo/troubleshooting/images
	XML_CATALOG_FILES="catalog-$(SYSTEM).xml" xsltproc \
		--xinclude \
		--stringparam fop1.extensions 1  \
		--output fo/UsersGuide5.fo \
		fo.xsl UsersGuide5.xml

#	docbook2pdf -o pdf UsersGuide5.xml

pdf: UsersGuide5.pdf

UsersGuide5.pdf: fo/UsersGuide5.fo
	FOP_OPTS="-Xmx256m" fop fo/UsersGuide5.fo UsersGuide5.pdf

