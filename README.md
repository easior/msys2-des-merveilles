# msys2-des-merveilles

This repository contains personal package scripts for MinGW targets to build under MSYS2.

MSYS2 is an independent rewrite of MSYS providing a Unix-like environment and command-line interface for MS Windows making it possible to port software running on POSIX systems (such as Linux, BSD, and Unix systems) to MS Windows.

Assuming that a MSYS2 environment has been properly installed, and MSYS2 development
packages should be prepared at first:
```sh
$ pacman -S base-devel
```
Now, any package in this repository could be built by using the following command:
```sh
$ cd ${package-name}
$ MINGW_ARCH=mingw64 makepkg-mingw -sLf
```
Afterwards, the freshly built package(s) could be installed into your MSYS2
environment with the following command:
```sh
$ pacman -U ${package-name}*.pkg.tar.xz
```

Enjoy yourself at your risk.
