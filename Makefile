.PHONY: all test clean distclean install

all: hello-cpp

hello-cpp:
	$(CXX) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -o hello-cpp hello.cpp

test: hello-cpp
	python ./test.py

clean: distclean

distclean:
	rm -f hello-cpp

install: BIN = $(DESTDIR)/usr/bin
install: all
	install -d $(BIN)
	install ./hello-cpp $(BIN)
