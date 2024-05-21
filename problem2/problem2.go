package main

import "fmt"

func main() {
	var angka int = 6
	for i := 1; i <= angka; i++ {
		if angka%i == 0 {
			fmt.Println(i)
		}
	}

}
