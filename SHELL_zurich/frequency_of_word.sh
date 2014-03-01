#!/bin/bash
#http://bashshell.net/shell-scripts/script-find-frequency-of-words-in-a-file/
#In the 1980s a Bell Labs researcher Jon Bentley posed a challenge:
# "write a program that would take a text file, input an integer for n and print the frequency of occurrence of words from largest to smallest"
# Doug McIlroy wrote a six step script in a few minutes:

tr -cs A-Za-z\' '\n' | tr A-Z a-z | sort | uniq -c | sort -k1,1nr -k2 | sed ${1:-25}q

## first step: tr -cs A-Za-z\' '\n'  replaces characters that are not letters with newlines. 

## II step: tr A-Z a-z 
