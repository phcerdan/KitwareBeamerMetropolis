#!/bin/bash

# run this to regenerate eps files from svg files
# requires inkscape

set -e

for f in *.svg; do
  inkscape $f --export-pdf=${f%%.*}.pdf --export-area-page
done
