#!/bin/bash

##
# writes a content to a given file
##
write()
{
  filepath=$1
  content=$2

  [ -z "$filepath" ] && echo "No filename given!" && exit 1
  [ -z "$content" ] && echo "No content to write to file!" && exit 1

  filename="$(basename $filepath)"
  directory="$(dirname $filepath)"

  if [ "$directory" != "." ]; then 
    if [ ! -d "$directory" ]; then  
	if [ $(mkdir -p "$directory") ] ; then  
	  echo "Can't create directory!" && exit 1
  	fi
    fi
  fi
  
#  echo "Path=$filepath"
#  echo "Filename=$filename"
#  echo "Dirname=$directory"
  echo "$content" >> $filepath
}

write "$1" "$2"
