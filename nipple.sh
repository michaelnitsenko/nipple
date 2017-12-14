#! /usr/bin/env bash

sizes=( 20 40 60 29 58 87 40 80 120 120 180 76 152 167 48 55 172 196 1024 )
names=( "20" "20@2x" "20@3x" "29" "29@2x" "29@3x" "40" "40@2x" "40@3x" "60@2x" "60@3x" "76" "76@2x" "83.5@2x" "24@2x" "27.5@2x" "86@2x" "98@2x" "1024" )
out_folder="AppIcon.appiconset"


path_to_file=$1
file_folder=$(dirname ${path_to_file})
out_path="$file_folder/$out_folder"

mkdir $out_path

for i in ${!sizes[@]}
do 
  size=${sizes[$i]}
  name=${names[$i]}
  sips --resampleWidth $size $path_to_file --out $out_path/$name.png > /dev/null
done


contents_file=$out_path/Contents.json

cat > $contents_file <<- EOM
{
  "images" : [
    {
      "size" : "20x20",
      "idiom" : "iphone",
      "filename" : "20@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "20x20",
      "idiom" : "iphone",
      "filename" : "20@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "29@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "40@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "60@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "60@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "20x20",
      "idiom" : "ipad",
      "filename" : "20.png",
      "scale" : "1x"
    },
    {
      "size" : "20x20",
      "idiom" : "ipad",
      "filename" : "20@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "29.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "40.png",
      "scale" : "1x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "76.png",
      "scale" : "1x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "76@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "83.5x83.5",
      "idiom" : "ipad",
      "filename" : "83.5@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "1024x1024",
      "idiom" : "ios-marketing",
      "filename" : "1024.png",
      "scale" : "1x"
    },
    {
      "size" : "24x24",
      "idiom" : "watch",
      "filename" : "24@2x.png",
      "scale" : "2x",
      "role" : "notificationCenter",
      "subtype" : "38mm"
    },
    {
      "size" : "27.5x27.5",
      "idiom" : "watch",
      "filename" : "27.5@2x.png",
      "scale" : "2x",
      "role" : "notificationCenter",
      "subtype" : "42mm"
    },
    {
      "size" : "29x29",
      "idiom" : "watch",
      "filename" : "29@2x.png",
      "role" : "companionSettings",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "watch",
      "filename" : "29@3x.png",
      "role" : "companionSettings",
      "scale" : "3x"
    },
    {
      "size" : "40x40",
      "idiom" : "watch",
      "filename" : "40@2x.png",
      "scale" : "2x",
      "role" : "appLauncher",
      "subtype" : "38mm"
    },
    {
      "size" : "86x86",
      "idiom" : "watch",
      "filename" : "86@2x.png",
      "scale" : "2x",
      "role" : "quickLook",
      "subtype" : "38mm"
    },
    {
      "size" : "98x98",
      "idiom" : "watch",
      "filename" : "98@2x.png",
      "scale" : "2x",
      "role" : "quickLook",
      "subtype" : "42mm"
    },
    {
      "size" : "1024x1024",
      "idiom" : "watch-marketing",
      "filename" : "1024.png",
      "scale" : "1x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}
EOM
