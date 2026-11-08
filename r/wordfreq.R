text <- tolower(paste(readLines(file("stdin")), collapse = " "))
words <- regmatches(text, gregexpr("[a-z]+", text))[[1]]
counts <- table(words)
d <- data.frame(w = names(counts), n = as.integer(counts), stringsAsFactors = FALSE)
d <- d[order(-d$n, d$w, method = "radix"), ]
for (i in seq_len(min(3, nrow(d)))) cat(sprintf("%s %d\n", d$w[i], d$n[i]))
