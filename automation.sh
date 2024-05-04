#!/bin/bash
i
declare -A map
map["origin"]="ci/var/test.yml"

git init
git remote add origin git@github.com:saipraasnth/lucky/tree/main/ci/var.git
git pull origin main
git checkout  main
git add automation.sh
git commit -m "This is done through shell scripting"

for i in "${!map[@]}"
do
    git remote add $i git@github.com:saipraasnth/lucky/tree/main/ci/var.git
    git push -u $i main
done


