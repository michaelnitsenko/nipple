#!/bin/bash


f=$(pwd)

mkdir icons
sips --resampleWidth 20 "${f}/${1}" --out "${f}/icons/20.png"
sips --resampleWidth 40 "${f}/${1}" --out "${f}/icons/20@2x.png"
sips --resampleWidth 60 "${f}/${1}" --out "${f}/icons/20@3x.png"
sips --resampleWidth 29 "${f}/${1}" --out "${f}/icons/29.png"
sips --resampleWidth 58 "${f}/${1}" --out "${f}/icons/29@2x.png"
sips --resampleWidth 87 "${f}/${1}" --out "${f}/icons/29@3x.png"
sips --resampleWidth 40 "${f}/${1}" --out "${f}/icons/40.png"
sips --resampleWidth 80 "${f}/${1}" --out "${f}/icons/40@2x.png"
sips --resampleWidth 120 "${f}/${1}" --out "${f}/icons/40@3x.png"
sips --resampleWidth 120 "${f}/${1}" --out "${f}/icons/60@2x.png"
sips --resampleWidth 180 "${f}/${1}" --out "${f}/icons/60@3x.png"
sips --resampleWidth 76 "${f}/${1}" --out "${f}/icons/76.png"
sips --resampleWidth 152 "${f}/${1}" --out "${f}/icons/76@2x.png"
sips --resampleWidth 167 "${f}/${1}" --out "${f}/icons/83.5@2x.png"