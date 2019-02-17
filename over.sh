#!/bin/bash

## copy all files from generated _site directory of joon to apfelhammer.de

bundle exec jekyll build &&

wait &&

rsync -r -a -v -e ssh --delete _site/ appleham@appleham.uber.space:/var/www/virtual/appleham/html/
