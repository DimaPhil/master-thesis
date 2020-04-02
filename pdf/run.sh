#!/bin/bash

for i in master; do
  xelatex $i-thesis
  biber    $i-thesis
  xelatex $i-thesis
  xelatex $i-thesis
done

rm master-thesis.{aux,log,bbl,bcf,blg,run.xml,toc,tct}
