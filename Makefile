# Makefile

TOPTARGETS := all clean

SUBDIRS := $(wildcard software/.)
SUBDIRS := $(wildcard software/. DISCH_100)

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)