VERSION = 3.0

# Programs
CC ?= cc

# Paths
PREFIX := /usr/local
LIBPREFIX := $(PREFIX)/lib
LIBDIR := $(LIBPREFIX)/mocha

CFLAGS  := -Wall -Wextra -Iinclude -Ofast \
		   -march=native -flto -pipe
