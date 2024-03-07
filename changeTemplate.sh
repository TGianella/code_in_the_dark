#!/bin/bash -x
exec > /dev/null 2>&1
IFS=$'\n'

if [ $1 = "random" ]
then
  templates=()

  for template in ./dist/templates/*
  do
    templates+=($(basename "$template"))
  done

  size=${#templates[@]}
  index=$(($RANDOM % $size))

  echo "${templates[*]}"

  template_to_load=${templates[$index]}
  echo $template_to_load
else
  template_to_load="$1"
fi

  rm -rf ./dist/assets
  cp -R ./dist/templates/$template_to_load/. ./dist/assets



