#!/bin/bash

add_files=$(git add -v . | awk '{print $2}' | awk -F "'" '{print $2}')
message="upload"
blank=" "
for file in $add_files
do
    echo $file
    message=$message$blank$file
done

if test $[$#] -eq $[0]
then
    echo $message
    git commit -m $message
else
    echo $1
    git commit -m "$1"
fi

git push origin master
url="https://raw.githubusercontent.com/hkunzhe/picture/master/"
for file in $add_files
do
    echo $url$file
done
