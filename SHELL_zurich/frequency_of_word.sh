#!/bin/bash
# from http://bashshell.net/shell-scripts/script-find-frequency-of-words-in-a-file/
# "write a program that would take a text file, input an integer for n and print the frequency of occurrence of words from largest to smallest"
# Doug McIlroy wrote a six step script in a few minutes:

tr -cs A-Za-z\' '\n' | tr A-Z a-z | sort | uniq -c | sort -k1,1nr -k2 | sed ${1:-25}q

#try/play with it understanding all the six section 
