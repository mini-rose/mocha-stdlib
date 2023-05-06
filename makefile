include config.mk

SOURCE := $(shell find src -type f -name '*.c')

stdlib: build
	$(CC) $(CFLAGS) -c -o build/mocha.o $(SOURCE)
	$(CC) $(CFLAGS) -shared -fpic -o build/mocha.so $(SOURCE)
	ar rcs build/mocha.a build/mocha.o

install:
	mkdir -p $(LIBDIR)/stdlib
	cp lib/* $(LIBDIR)/stdpack
	cp build/mocha.o $(LIBDIR)/stdlib
	cp build/mocha.so $(LIBDIR)/stdlib
	cp build/mocha.a $(LIBDIR)/stdlib

uninstall:
	$(RM) $(LIBDIR)/stdlib/mocha.o
	$(RM) $(LIBDIR)/stdlib/mocha.so
	$(RM) $(LIBDIR)/stdlib/mocha.a

compile_flags.txt:
	echo $(CFLAGS) | tr " " "\n" > compile_flags.txt

build:
	mkdir -p build $(SRCDIR)

clean:
	$(RM) -r build

.PHONY: install uninstall clean compile_flags.txt
.DEFAULT_GOAL := stdlib
