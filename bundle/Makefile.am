if !WITHOUT_FFMPEG
if !SYSTEM_FFMPEG
all-local:
	cd ffmpeg && $(MAKE) 
if WINDOWS
	cp ffmpeg/*/*.dll ..
endif

install-exec-local:
	cd ffmpeg && $(MAKE) install
endif

del-dlls:
if WINDOWS
	rm -f ../*.dll
endif

clean-local: del-dlls
	cd ffmpeg && $(MAKE) clean

distclean-local: del-dlls
	cd ffmpeg && $(MAKE) distclean
endif

