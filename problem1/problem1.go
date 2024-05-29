package main

import (
	"fmt"
	"strings"
)

func compare(a, b string) string {
	minLength := len(a)
	if len(b) < minLength {
		minLength = len(b)
	}

	for i := minLength; i > 0; i-- {
		if strings.HasPrefix(b, a[:i]) {
			return a[:i]
		}
	}

	return ""
}

func main() {
	fmt.Println(compare("AKA", "AKASHI"))
}
