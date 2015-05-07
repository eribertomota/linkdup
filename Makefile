# makefile for linkdup

BINDIR=$(DESTDIR)/usr/bin
MANDIR=$(DESTDIR)/usr/share/man/man1

install:
	[ -d $(BINDIR) ] || mkdir -p $(BINDIR)
	[ -d $(MANDIR) ] || mkdir -p $(MANDIR)
	[ -d $(BINDIR)/linkdup ] || { cp linkdup $(BINDIR); cp man/linkdup.1 $(MANDIR); exit; }

uninstall:
	[ -f $(BINDIR)/linkdup ] && rm -f $(BINDIR)/linkdup $(MANDIR)/linkdup.1*
