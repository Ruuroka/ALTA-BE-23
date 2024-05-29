package main

import (
	"fmt"
)

func caesar(offset int, input string) string {
	var result string
	for _, char := range input {
		if char >= 'a' && char <= 'z' {
			result += string((char-'a'+rune(offset))%26 + 'a')
		} else if char >= 'A' && char <= 'Z' {
			result += string((char-'A'+rune(offset))%26 + 'A')
		} else {
			result += string(char)
		}
	}
	return result
}

func main() {
	fmt.Println(caesar(3, "alta"))
}
