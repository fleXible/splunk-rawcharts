#!/bin/bash
# Make new dir
mkdir -p tmp/rawcharts

# Copy over all the needed things
cp -r appserver tmp/rawcharts
cp -r bin tmp/rawcharts
cp -r default tmp/rawcharts
cp -r django tmp/rawcharts
cp -r lookups tmp/rawcharts
cp -r metadata tmp/rawcharts
cp -r static tmp/rawcharts
find tmp/rawcharts/ -name "*.pyc" -delete
find tmp/rawcharts/ -name ".DS_Store" -delete
find tmp/rawcharts/ -name ".git*" -delete
rm -rf tmp/rawcharts/django/rawcharts/static/rawcharts/raw/.git


cd tmp
tar -czvf ../rawcharts.spl rawcharts
cd ..
rm -rf tmp