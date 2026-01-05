#!/usr/bin/env bash
# compile all src/*/main.typ into build/*.pdf

if [ ! -d build ]; then
	mkdir build
fi

for main_file in src/*/main.typ; do
	dir="$(dirname -- "$main_file")"

	# this is the * in src/*/main.typ
	name="${dir##*/}"

	typst c "$main_file" "build/$name.pdf"
done
