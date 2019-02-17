#!/usr/bin/env bash

set -xe

mkdir -p _site
bundle exec jekyll build
