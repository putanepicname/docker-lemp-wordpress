#!/bin/bash

set -e;

html_result=$(curl -sL localhost:8000);
grep_result=$(grep -o Afrikaans <<< "$html_result");
if [ $grep_result != "Afrikaans" ]; then
  echo "$grep_result"
  exit 1;
else
  echo "Wordpress installed";
  exit 0;
fi