package main

import "fmt"

func main() {
	var potongan int
	var harga int
	fmt.Printf("masukkan harganya: ")
	fmt.Scanln(&harga)
	fmt.Printf("masukkan diskonnya: ")
	fmt.Scanln(&potongan)
	var diskon = (potongan * harga) / 100
	var total = harga - diskon
	fmt.Printf("totalnya: %d", total)
}
