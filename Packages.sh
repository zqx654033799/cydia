#!/bin/bash
echo '-------------------------------------exec----------------------------------------'

SHELL_FOLDER=$(dirname "$0")
cd "$SHELL_FOLDER"
dpkg-scanpackages ./debs/ > Packages && bzip2 -f Packages

echo '-------------------------------------done----------------------------------------'
