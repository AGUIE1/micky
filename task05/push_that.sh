#!/bin/bash

if [ -z "$1" ]; then
  echo "Veuillez fournir un message de commit."
  exit 1
fi

git add .

git commit -m "$1"


if git push origin main ; then
  echo "Push réussi."
else
  echo "Une erreur s'est produite lors du push."
fi
