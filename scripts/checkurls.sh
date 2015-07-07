#!/bin/bash
# search the internal dead links in a website
# see "wicked cool shell scripts, 101 scripts for Linux" by Dave Taylor


#date
lynx="/usr/bin/lynx"

# remove the files from lynx at the end of the script
trap "/bin/rm -f traverse*.errors reject*.dat traverse*.dat" 0

if [ -z "$1" ] ; then
	echo "syntax: ./checkurls.sh http://www.exemple.com"
	exit 1
fi

$lynx -traversal "$1" > /dev/null

if [ -s "traverse.errors" ]; then
	echo "found" $(wc -l < traverse.errors) "errors."
	echo "$(grep '^http' traverse.dat | wc -l) pages read"
	sed "s|$1||g" < traverse.errors
else
	echo "no error detected.";
	echo "$(grep '^http' traverse.dat | wc -l) pages read"
	exit 0
fi

baseurl="$(echo $1|cut -d "/" -f 3)"
mv traverse.errors errors."$baseurl"
echo "see errors."$baseurl" for more informations"

#date
exit 0