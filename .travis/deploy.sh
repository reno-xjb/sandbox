#!/bin/bash
set -e

git config user.email "travis@travis-ci.org"
git config user.name "Travis CI"
git remote set-url origin https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git
git checkout master

yarn lerna:version --yes
