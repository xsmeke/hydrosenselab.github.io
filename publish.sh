#!/bin/sh

echo "Removing existing files"
rm -rf docs/*

echo "Generating site"
hugo

echo "Updating master branch"
cd docs && git add --all && git commit -m "Publishing to Github Pages (publish.sh)"

git push
