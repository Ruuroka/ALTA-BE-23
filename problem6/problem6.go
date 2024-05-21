package main

import "fmt"

func pangkat(base, pangkat int) int {
	var result = 1
	for i := 0; i < pangkat; i++ {
		result *= base
	}
	return result
}

func main() {
	fmt.Println(pangkat(2, 3))
}
