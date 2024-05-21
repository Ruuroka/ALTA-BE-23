package main

import (
	"fmt"
)

func FullPrima(N int) bool {
	if N <= 1 { // Jika N kurang dari atau sama dengan 1, N bukan bilangan prima
		return false
	}
	if N <= 3 { // Jika N adalah 2 atau 3, N adalah bilangan prima
		return true
	}
	if N%2 == 0 || N%3 == 0 { // Jika N habis dibagi 2 atau 3, N bukan bilangan prima
		return false
	}
	// Periksa apakah N adalah bilangan prima menggunakan metode divisibility trial
	// Hanya perlu memeriksa faktor prima sampai akar kuadrat dari N
	for i := 5; i*i <= N; i += 6 {
		if N%i == 0 || N%(i+2) == 0 { // Jika N habis dibagi oleh i atau i+2, maka N bukan bilangan prima
			return false
		}
	}
	return true
}

func main() {
	fmt.Println(FullPrima(31))
}
