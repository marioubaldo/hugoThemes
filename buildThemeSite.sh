#!/bin/bash

echo "Hugo env:"

hugo env

cd _script

BASEURL=${BASEURL:-http://localhost:1313}

./generateThemeSite.sh ${BASEURL} | exit 1

echo "Building site to public with baseURL ${BASEURL}..."

hugo --quiet -s hugoThemeSite/themeSite -b ${BASEURL} | exit 1

cd ..

echo "Done!"