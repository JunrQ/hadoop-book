#!/usr/bin/env bash
ncdcds=${GIT_DIRECTORY}/hadoop-book/input/ncdc
for year in ${ncdcds}/all/*
do
  echo -ne `basename $year`"\t"
  cat $year | \
    awk '{ temp = substr($0, 88, 5) + 0;
           q = substr($0, 93, 1);
           if (temp !=9999 && q ~ /[01459]/ && temp > max) max = temp }
         END { print max }'
done