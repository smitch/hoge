#!/bin/bash
#PBS -e /usr2/keiji/sumizaki/hoge/qsub/err
#PBS -o /usr2/keiji/sumizaki/hoge/qsub/out
#PBS -N echo_err 

echo "hello err" 1>&2


