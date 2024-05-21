package main

import "fmt"

func main() {
	var num int = 20
	for i := num; i > 0; i-- {
		if num%i == 0 {
			fmt.Println(i)
		}
	}
}
