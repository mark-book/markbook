#!/bin/bash

MAIN_BRANCH=gh-pages

git add -u
git commit -m "$1"
git push origin $MAIN_BRANCH


