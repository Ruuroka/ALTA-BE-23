package main

import "fmt"

func ubahHuruf(sentence string) string {
	runes := []rune(sentence)
	for i, char := range runes {
		if char >= 'a' && char <= 'z' {
			runes[i] = ((char-'a'+10)%26 + 'a')
		} else if char >= 'A' && char <= 'Z' {
			runes[i] = ((char-'A'+10)%26 + 'A')
		}
	}
	return string(runes)
}

func main() {
	fmt.Println(ubahHuruf("GolAng"))
}
