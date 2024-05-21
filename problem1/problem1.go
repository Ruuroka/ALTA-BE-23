package main

import "fmt"

func main() {
	// nilai 80-100 A, 65-79 B+, 50-64 B, 35-49 C, 0-34 D
	var nilai int
	fmt.Print("Masukkan nilai anda : ")
	fmt.Scan(&nilai)
	// if else
	if nilai <= 100 && nilai >= 80 {
		fmt.Println("Anda mendapatkan nilai A")
	} else if nilai < 80 && nilai >= 65 {
		fmt.Println("Anda mendapatkan nilai B+")
	} else if nilai < 65 && nilai >= 50 {
		fmt.Println("Anda mendapatkan nilai B")
	} else if nilai < 50 && nilai >= 35 {
		fmt.Println("Anda mendapatkan nilai C")
	} else {
		fmt.Println("Anda mendapatkan nilai D")
	}
}
