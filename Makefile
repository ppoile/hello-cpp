BIN = $(DESTDIR)/usr/bin

.PHONY: all clean distclean install

all: hello

hello:
	g++ -o hello hello.cpp

clean: distclean

distclean:
	rm -f hello

install: all
	install -d $(BIN)
	install ./hello $(BIN)
