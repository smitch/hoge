#!/bin/bash

CMDNAME=`basename $0`

while getopts ab:c: OPT
do
  case $OPT in
    "a" ) FLG_A="TRUE" ;;
    "b" ) FLG_B="TRUE" ; VALUE_B="$OPTARG" 
      echo $VALUE_B;;
    "c" ) FLG_C="TRUE" ; VALUE_C="$OPTARG" ;;
      * ) echo "Usage: $CMDNAME [-a] [-b VALUE] [-c VALUE]" 1>&2
          exit 1 ;;
  esac
done



exit 0
