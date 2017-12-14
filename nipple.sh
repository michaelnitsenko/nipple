#!/bin/bash

sizes=( 20 40 60 29 58 87 40 80 120 120 180 76 152 167 48 55 172 196 )
names=( "20" "20@2x" "20@3x" "29" "29@2x" "29@3x" "40" "40@2x" "40@3x" "60@2x" "60@3x" "76" "76@2x" "83.5@2x" "24@2x" "27.5@2x" "86@2x" "98@2x" )
out_folder="icons"


path_to_file=$1
file_folder=$(dirname ${path_to_file})
out_path="$file_folder/$out_folder"

mkdir $out_path

for i in ${!sizes[@]}
do 
  size=${sizes[$i]}
  name=${names[$i]}
  sips --resampleWidth $size $path_to_file --out $out_path/$name.png
done

