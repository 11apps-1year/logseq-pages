#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "${SCRIPT_DIR}"

IS_ICLOUD_DIR=$( pwd | grep -i icloud )
if  [ "" != "${IS_ICLOUD_DIR}" ]
then
    git add .
    git commit -m "sync icloud"
fi

git pull --rebase --autostash;
git push;

