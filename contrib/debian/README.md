
Debian
====================
This directory contains files used to package bitbraincoind/bitbraincoin-qt
for Debian-based Linux systems. If you compile bitbraincoind/bitbraincoin-qt yourself, there are some useful files here.

## bitbraincoin: URI support ##


bitbraincoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitbraincoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitbraincoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitbraincoin128.png` to `/usr/share/pixmaps`

bitbraincoin-qt.protocol (KDE)

