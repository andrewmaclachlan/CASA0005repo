#!/bin/sh

git config --global user.email "a.maclachlan@ucl.ac.uk"
git config --global user.name "andrewmaclachlan"

#clone the repository to the book-output directory
git clone -b gh-pages \
  https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git \
  book-output
cd book-output
git rm -rf *
cp -r ../_book/* ./
git add --all *
git commit -m"Update the book"
git push -q origin gh-pages