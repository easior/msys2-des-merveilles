# msys2-des-merveilles

This repository contains personal package scripts for MinGW targets to build under MSYS2.

MSYS2 is an independent rewrite of MSYS providing a Unix-like environment and
command-line interface for MS Windows making it possible to port software running
on POSIX systems (such as Linux, BSD, and Unix systems) to MS Windows.

First of all, clone this repository
```sh
$ git clone git clone https://github.com/easior/msys2-des-merveilles.git
$ cd msys2-des-merveilles
```
before proceeding.

## Building of single msys2 package 

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

## Construction of a msys2 repository

Please execute the following command line:
```sh
$ build_repo.sh
```
in order to create a msys2 repository. For using this repository, append
the following line to /etc/pacman.conf
```sh
$ echo '\n\n[Les Merveilles]\nServer = https://github.com/easior/msys2-des-merveilles/packages/releases/download/current/\nSigLevel = PackageOptional\n' >> /etc/pacman.conf
```

Enjoy yourself at your risk.
