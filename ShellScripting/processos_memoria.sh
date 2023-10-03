#!/bin/sh

processos=$(ps -e -o pid --sort -size | head -n 11 | awk '$1 - /^[0-9]+$/')
for pid in $processos
  do
   echo  $(ps -p $pid -o comm=)
done 

