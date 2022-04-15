#!/bin/bash

if [ -e ../msys64-des-merveilles ]; then
	rm -rf ../msys64-des-merveilles
fi

mkdir -p ../msys64-des-merveilles/{build,mingw64}

build_package()
{
	mkdir -p "../msys64-des-merveilles/build/$1"
	rm -rf "../msys64-des-merveilles/build/$1/./*"
	cp "mingw-$1/PKGBUILD" "../msys64-des-merveilles/build/$1/PKGBUILD"

	pushd "../msys64-des-merveilles/build/$1"
	makepkg -i
	popd
	find "../msys64-des-merveilles/build/$1" -name '*.pkg.tar.xz' -type f -print0 | while IFS= read -r -d $'\0' line; do
		cp "$line" "../msys64-des-merveilles/mingw64/"
	done
}

packages=("wxsqlite3")

for pkg in ${packages[@]}; do
	echo "Build Package: $pkg..."
	build_package "$pkg"
done

echo "Creating repository..."
repo-add ../msys64-des-merveilles/mingw64/mingw64.db.tar.gz ../msys64-des-merveilles/mingw64/*.pkg.tar.xz
echo "Repository is probably ready or not..."
