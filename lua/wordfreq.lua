local text = io.read("a"):lower()
local counts, words = {}, {}
for w in text:gmatch("%a+") do
  if not counts[w] then words[#words + 1] = w end
  counts[w] = (counts[w] or 0) + 1
end
table.sort(words, function(a, b)
  if counts[a] ~= counts[b] then return counts[a] > counts[b] end
  return a < b
end)
for i = 1, math.min(3, #words) do
  io.write(words[i], " ", counts[words[i]], "\n")
end
