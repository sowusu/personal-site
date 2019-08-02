#!/bin/bash

# log msg
echo "**************   Deploying regenerated static site to sowusu.github.io    ********"


#Rebuild static pages
hugo -t coder-portfolio

#Go to the public folder
cd public

#Add all new changes
git add --all

#Commit changes
msg="rebuilding site $(date)"
if  [-n "$*" ] 
then 
	msg="$*"

fi

git commit -m "$msg"

#Push changes
git push

