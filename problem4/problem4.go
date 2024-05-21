package main

import "fmt"

func Prime(number int) bool {
	if number <= 1 {
		return false
	} else if number == 2 || number == 3 {
		return true
	} else if number%2 == 0 || number%3 == 0 {
		return false
	}
	return true
}

func main() {
	fmt.Println(Prime(12))
}
