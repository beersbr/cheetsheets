#!/bin/bash

# iterate back through directories until (if) we find a build.sh file then execute it. This the searching starts from the current file

# double quotes for paths that contain spaces etc...
# echo "Absolute path: $ABS_PATH"

function abs_path {
	ABS_PATH=`cd "$1"; pwd`
	echo $ABS_PATH
}

function find_build() {
local filename="$(abs_path "$1")"

if [ "$filename" = "/" ] ; then
	echo "NOBUILDFOUND"
	return
fi

for file in "$filename"/*; do
	if [ ! -d "${file}" ] ; then
		local fname="${file##*/}"
		if [ "build.sh" = "$fname" ] ; then
			echo "${file}"
			return
		fi
	fi
done

local a="$filename"/..
find_build "$a"
}

build_file=$(find_build "$(pwd)")
build_dir=$(dirname "$build_file")


pushd "$build_dir"
$build_file
popd

