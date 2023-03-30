#!/usr/bin/env bash

cd scripts

for scriptName in `cat _scripts.txt`; do
  echo "Building: $scriptName.Script.txt"
  cat ${scriptName}.Script.txt_pre.xml > $scriptName.Script.txt
  cat ${scriptName}_Inner.Script.txt >> $scriptName.Script.txt
  cat ${scriptName}.Script.txt_post.xml >> $scriptName.Script.txt
done
