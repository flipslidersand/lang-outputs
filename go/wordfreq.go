package main

import (
	"fmt"
	"io"
	"os"
	"regexp"
	"sort"
	"strings"
)

func main() {
	b, _ := io.ReadAll(os.Stdin)
	counts := map[string]int{}
	for _, w := range regexp.MustCompile(`[a-z]+`).FindAllString(strings.ToLower(string(b)), -1) {
		counts[w]++
	}
	words := make([]string, 0, len(counts))
	for w := range counts {
		words = append(words, w)
	}
	sort.Slice(words, func(i, j int) bool {
		if counts[words[i]] != counts[words[j]] {
			return counts[words[i]] > counts[words[j]]
		}
		return words[i] < words[j]
	})
	for i := 0; i < len(words) && i < 3; i++ {
		fmt.Printf("%s %d\n", words[i], counts[words[i]])
	}
}
