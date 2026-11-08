#!/usr/bin/env bash
export LC_ALL=C
tr 'A-Z' 'a-z' | tr -cs 'a-z' '\n' | grep -v '^$' | sort | uniq -c \
  | sort -k1,1nr -k2,2 | head -3 | awk '{print $2, $1}'
