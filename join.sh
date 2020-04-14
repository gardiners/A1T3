#!/bin/bash
# Joins annotation and expression on gene, and return gene, function and expression.
join -t $'\t' --header annotation.tsv expression.tsv | cut -f 1,2,4 > join.tsv 
