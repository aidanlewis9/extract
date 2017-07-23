#!/bin/sh

if [ "$#" -eq "0" ]; then
  echo "Usage: extract.sh archive1 archive2..."
  exit 1
fi

while [ "$#" -gt "0" ]
do
  case "$1" in
    *.tgz | *.tar.gz)
      tar -xzvf "$1" ;;
    *.tbz | *.tar.bz2)
      tar -xjvf "$1" ;;
    *.txz | *.tar.xz)
      tar -xJvf "$1" ;;
    *.zip | *.jar)
      unzip "$1" ;;
    esac
  shift
done
