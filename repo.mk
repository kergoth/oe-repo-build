default:
	make -C build/

%:
	make -C build/ $@
