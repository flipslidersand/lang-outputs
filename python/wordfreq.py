import collections
import re
import sys

counts = collections.Counter(re.findall(r"[a-z]+", sys.stdin.read().lower()))
for word, n in sorted(counts.items(), key=lambda kv: (-kv[1], kv[0]))[:3]:
    print(word, n)
