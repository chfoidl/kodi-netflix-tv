ADDON_ID := $(shell python -c "import xml.etree.ElementTree; print(xml.etree.ElementTree.parse('addon.xml').getroot().attrib['id']);")
ADDON_VERSION := $(shell python -c "import xml.etree.ElementTree; print(xml.etree.ElementTree.parse('addon.xml').getroot().attrib['version']);")

package: init-submodules
	mkdir dist; \
	zip dist/$(ADDON_ID)-$(ADDON_VERSION).zip *

init-submodules:
	git submodule update --init --recursive