# Makefile

TOOLCHAIN_PREFIX = /bin

PYTHON = /usr/bin/python3
CC=$(TOOLCHAIN_PREFIX)/gcc
RM = rm -rf
MKDIR = mkdir

CFLAGS = -c
LDFLAGS = 

LIBS =

BUILDDIR = build
SOURCEDIR = src
HEADERDIR = src

SOURCES = $(wildcard $(SOURCEDIR)/*.c)
OBJECTS = $(patsubst $(SOURCEDIR)/%.c, $(BUILDDIR)/%.o, $(SOURCES))

BINARY = software

.PHONY: all clean sizes

################################################################################

all: $(BINARY)

# LINKING ######################################################################
$(BINARY): $(OBJECTS)
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

# COMPILING ####################################################################
$(BUILDDIR)/%.o: $(SOURCEDIR)/%.c
	$(CC) $(CFLAGS) -o $@ $<

################################################################################

clean:
	$(RM) firmware*.elf firmware*.bin firmware*.hex firmware*.map firmware*.objdump
	$(RM) $(BINARY) $(OBJECTS) $(BUILDDIR)/*.o
