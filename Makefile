prefix ?= /usr

all:

install:
	install -m 755 -D restic-sh         $(DESTDIR)/$(prefix)/sbin/restic-sh
	install -m 644 -D example-repo.conf $(DESTDIR)/etc/restic-sh/example-repo.conf
	install -m 644 -D restic-sh.1       $(DESTDIR)/$(prefix)/share/man/man1/restic-sh.1
	install -m 644 -D restic-sh.service $(DESTDIR)/lib/systemd/system/restic-sh.service
	install -m 644 -D restic-sh.timer   $(DESTDIR)/lib/systemd/system/restic-sh.timer

