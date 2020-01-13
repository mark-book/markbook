#!/bin/bash

DEFAULT_MESSAGE="update mind maps"
MESSAGE="${1:-DEFAULT_MESSAGE}"

git add .
git commit -m "$MESSAGE"
git push origin gh-pages
