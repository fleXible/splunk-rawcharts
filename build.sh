#!/bin/bash
# Make new dir
mkdir -p tmp/rawcharts

# Copy over all the needed things
cp -r bin tmp/rawcharts
cp -r appserver tmp/rawcharts
cp -r default tmp/rawcharts
cp -r lookups tmp/rawcharts
find tmp/rawcharts/ -name "*.pyc" -delete

cd tmp
tar -czvf ../rawcharts.spl rawcharts
cd ..
rm -rf tmp