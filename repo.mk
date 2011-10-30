scriptsdir = sources/scripts

default: setup.sh
	exec $(MAKE)

%: setup.sh
	exec $(MAKE) $@

setup.sh:
	@echo Initializing setup..
	ln -sf $(scriptsdir)/Makefile
	ln -sf $(scriptsdir)/setup.sh
	mkdir -p conf
	cp $(scriptsdir)/conf/local.conf conf/
	cp $(scriptsdir)/conf/bblayers.conf conf/
	ln -sf ../$(scriptsdir)/conf/site.conf conf/
