#!/bin/bash

for f in ./*.png; do
  fname=$f.resized.png
  ffmpeg -i $f -vf scale=2000:-1 ./output_small/$fname
done