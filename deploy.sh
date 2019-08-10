#!/bin/bash

# log msg
echo "**************   Deploying regenerated static site to sowusu.github.io    ********"

#remove old files
rm -rf public/*

#Rebuild static pages
hugo -t coder-portfolio

#Go to the public folder
cd public

#Add all new changes
git add --all

#Commit changes
git commit -m "Rebuilding site $(date)"

#Push changes
git push

