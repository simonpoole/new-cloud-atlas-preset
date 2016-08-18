#!/bin/bash


sed "s=ICONPATH:==" < nca_master_preset.xml | sed "s/ICONTYPE/png/" > gen/nca_zip_preset.xml
cd gen
rm  nca.zip
zip nca.zip nca_zip_preset.xml
cd ../icons/png
ls *.png | zip -@ ../../gen/nca.zip 
cd ../../i8n
ls *.po | zip -@ ../gen/nca.zip 

