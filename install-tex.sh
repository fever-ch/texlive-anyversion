#!/bin/bash
export YEAR=$1
export TERM=xterm


echo "Installing TeXlive $YEAR"

wget -c ftp://tug.org/historic/systems/texlive/$YEAR/tlnet-final/install-tl.zip || exit -1

unzip install-tl.zip

rm install-tl.zip
cd install-tl-*

echo -e "O\nL\n\n\n\nR\nI\n" | ./install-tl -repository ftp://tug.org/historic/systems/texlive/$YEAR/tlnet-final || exit -1
cd .. ; rm -rf install-tl-*