package main

import (
	"fmt"
)

type Chiper interface {
	Encode(string) string
	Decode(string) string
}

type substitutionCipher struct {
	shift int
}

func (s *substitutionCipher) Encode(text string) string {
	encodedText := ""
	for _, char := range text {
		newChar := char + rune(s.shift) // Efficiently shift characters using rune
		if newChar > 'z' {
			newChar = newChar - ('z' - 'a' + 1) // Wrap around to 'a' for overflow
		}
		encodedText += string(newChar)
	}
	return encodedText
}

func (s *substitutionCipher) Decode(text string) string {
	decodedText := ""
	for _, char := range text {
		newChar := char - rune(s.shift) // Efficiently shift characters using rune
		if newChar < 'a' {
			newChar = newChar + ('z' - 'a' + 1) // Wrap around to 'z' for underflow
		}
		decodedText += string(newChar)
	}
	return decodedText
}

func main() {
	var menu int
	var studentName string
	cipher := &substitutionCipher{shift: 3} // Fixed shift value for Caesar Cipher

	fmt.Println("[1] Encrypt")
	fmt.Println("[2] Decrypt")
	fmt.Print("Choose your menu: ")
	fmt.Scan(&menu)

	if menu == 1 {
		fmt.Print("Input Student's Name: ")
		fmt.Scan(&studentName)
		encodedName := cipher.Encode(studentName)
		fmt.Println("Encoded Student's Name:", encodedName)
	} else if menu == 2 {
		fmt.Print("Input Student's Encoded Name: ")
		fmt.Scan(&studentName)
		decodedName := cipher.Decode(studentName)
		fmt.Println("Decoded Student's Name:", decodedName)
	} else {
		fmt.Println("Wrong input menu")
	}
}
