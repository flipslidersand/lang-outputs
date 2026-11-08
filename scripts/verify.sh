#!/usr/bin/env bash
# Run every language's wordfreq against spec/input.txt and compare with spec/expected.txt.
# A language whose toolchain is missing is reported as SKIP. Exit 1 if any FAIL.
cd "$(dirname "$0")/.." || exit 1
T=$(mktemp -d); trap 'rm -rf "$T"' EXIT
fail=0
check() { # name tool command...
  local name=$1 tool=$2; shift 2
  if ! command -v "$tool" >/dev/null 2>&1; then echo "SKIP $name ($tool not found)"; return; fi
  if out=$("$@" < spec/input.txt 2>"$T/err") && [ "$out" = "$(cat spec/expected.txt)" ]; then
    echo "PASS $name"
  else
    echo "FAIL $name"; head -3 "$T/err"; fail=1
  fi
}
check python     python3 python3 python/wordfreq.py
check go         go      go run go/wordfreq.go
check rust       rustc   bash -c "rustc -O -o $T/rs rust/wordfreq.rs && $T/rs"
check javascript node    node javascript/wordfreq.js
check typescript bun     bun typescript/wordfreq.ts
check shell      bash    bash shell/wordfreq.sh
check ruby       ruby    ruby ruby/wordfreq.rb
check perl       perl    perl perl/wordfreq.pl
check php        php     php php/wordfreq.php
check lua        lua     lua lua/wordfreq.lua
check c          gcc     bash -c "gcc -O2 -o $T/c c/wordfreq.c && $T/c"
check cpp        g++     bash -c "g++ -O2 -std=c++17 -o $T/cpp cpp/wordfreq.cpp && $T/cpp"
check java       java    java java/Wordfreq.java
check kotlin     kotlinc bash -c "kotlinc kotlin/wordfreq.kt -include-runtime -d $T/k.jar 2>/dev/null && java -jar $T/k.jar"
check scala      scala   scala scala/wordfreq.scala
check r          Rscript Rscript r/wordfreq.R
check elixir     elixir  elixir elixir/wordfreq.exs
exit $fail
