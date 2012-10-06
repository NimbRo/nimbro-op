#!/bin/bash

set -e

if [[ -e work ]]; then
	echo "The work directory already exists. Please delete it before re-running this script."
	exit 1
fi

mkdir work
cd work

mkdir tmp
wget -O tmp/main.zip 'http://sourceforge.net/projects/darwinop/files/Software/Main%20Controller/Source%20Code/DARwIn-OP_ROBOTIS_v1.5.0.zip/download'
wget -O tmp/sub.zip 'http://sourceforge.net/projects/darwinop/files/Software/Sub%20Controller/CM730_FIRMWARE_VER0x13_20110922.zip/download'

unzip -q tmp/main.zip
mkdir firmware

(cd firmware && unzip -q -o ../tmp/sub.zip || true)

function apply() {
	for i in $1/*; do
		echo "Applying patch $i"
		patch -p1 < $i
	done
}

apply ../software/patches-essential

echo
echo

read -p "Do you also want to apply our development patches? (Y/N) " answer
if [[ $answer == "Y" ]]; then
	apply ../software/patches-optional
fi

echo "Installing new motion file"
cp ../software/motion_4096.bin Data/

echo "Removing temporary directory"
rm tmp/*
rmdir tmp

echo
echo
echo "Done. The patched source tree resides under work/."