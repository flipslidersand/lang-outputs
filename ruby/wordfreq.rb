counts = Hash.new(0)
STDIN.read.downcase.scan(/[a-z]+/) { |w| counts[w] += 1 }
counts.sort_by { |w, n| [-n, w] }.first(3).each { |w, n| puts "#{w} #{n}" }
