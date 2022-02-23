# msys2-des-merveilles

This repository contains personal package scripts for MinGW targets to build under MSYS2.

MSYS2 is an independent rewrite of MSYS providing a Unix-like environment and command-line interface for MS Windows making it possible to port software running on POSIX systems (such as Linux, BSD, and Unix systems) to MS Windows.

Assuming you have a properly installed MSYS2 environment and build tools, you can build any package using the following command:
```sh
$ cd ${package-name}
$ MINGW_ARCH=mingw64 makepkg-mingw -sLf
```
After that you can install the freshly built package(s) with the following command:
```sh
$ pacman -U ${package-name}*.pkg.tar.xz
```
