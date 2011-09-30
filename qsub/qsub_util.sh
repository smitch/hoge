#! /bin/bash

QSUB_DIR="/usr2/keiji/sumizaki/qsub"
RUN_DIR=QSUB_DIR/"run"
OUT_DIR=QSUB_DIR/"out"
ERR_DIR=QSUB_DIR/"err"

usage(){
  echo "usage: ${0##*/} [+-o ARG] [+-e ARG] [+-N ARG] [+-h] [-x] [--] ARGS..."
}

while getopts :o:e:N:hx OPT; do
  case $OPT in
    o|+o)
      OUT_DIR="$OPTARG"
      ;;
    e|+e)
      ERR_DIR="$OPTARG"
      ;;
    N|+N)
      NAME="$OPTARG"
      ;;
    h|+h)
      usage
      exit
      ;;
    x|+x)
      
      ;;
    *)
      usage
      exit 2
  esac
done
shift $(( OPTIND - 1 ))
OPTIND=1

echo >> 
