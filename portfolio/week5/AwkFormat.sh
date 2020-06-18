#!/bin/bash

./UserAccounts.sh > input.txt

grep -r '^-' input.txt
grep -r 'User*' input.txt
grep -r '^-' input.txt
awk -F"|" '$5~/bash/' input.txt
