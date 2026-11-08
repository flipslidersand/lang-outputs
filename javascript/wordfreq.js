const text = require("fs").readFileSync(0, "utf8").toLowerCase();
const counts = new Map();
for (const w of text.match(/[a-z]+/g) || []) counts.set(w, (counts.get(w) || 0) + 1);
[...counts]
  .sort((a, b) => b[1] - a[1] || (a[0] < b[0] ? -1 : 1))
  .slice(0, 3)
  .forEach(([w, n]) => console.log(`${w} ${n}`));
