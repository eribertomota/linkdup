# makefile for linkdup

BINDIR=$(DESTDIR)/usr/bin
EXEC=$(BINDIR)/linkdup
MANDIR=$(DESTDIR)/usr/share/man/man1

install:
	[ -d $(BINDIR) ] || mkdir -p $(BINDIR)
	[ -d $(MANDIR) ] || mkdir -p $(MANDIR)
	[ -f "$(EXEC)" ] || { cp linkdup $(BINDIR); chmod 755 $(EXEC); cp man/linkdup.1 $(MANDIR); exit; }

uninstall:
	[ -f "$(EXEC)" ] && rm -f $(BINDIR)/linkdup $(MANDIR)/linkdup.1* || true
