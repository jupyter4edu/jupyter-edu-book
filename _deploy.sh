#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "kyle.niemeyer@gmail.com"
git config --global user.name "Kyle Niemeyer"

git clone -b gh-pages https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git book-output
cd book-output
cp -r ../_book/* ./
## Manual copies to get the icons:
cp ../images/caution.png ./images
cp ../images/important.png ./images
cp ../images/note.png ./images
cp ../images/tip.png ./images
cp ../images/warning.png ./images
git add --all *
git commit -m"Update the book" || true
git push -q origin gh-pages
