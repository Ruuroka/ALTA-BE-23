package main

import (
	"fmt"
)

// Fungsi getMinMax menerima pointer ke beberapa integer dan mengembalikan nilai minimum dan maksimum
func getMinMax(numbers ...*int) (min int, max int) {
	// Inisialisasi min dan max dengan nilai pertama dalam slice
	min = *numbers[0]
	max = *numbers[0]

	// Iterasi melalui setiap angka dalam slice
	for _, num := range numbers {
		if *num < min {
			min = *num
		}
		if *num > max {
			max = *num
		}
	}
	return
}

func main() {
	var a1, a2, a3, a4, a5, a6 int

	fmt.Println("Masukkan 6 angka:")
	fmt.Scan(&a1)
	fmt.Scan(&a2)
	fmt.Scan(&a3)
	fmt.Scan(&a4)
	fmt.Scan(&a5)
	fmt.Scan(&a6)

	min, max := getMinMax(&a1, &a2, &a3, &a4, &a5, &a6)

	fmt.Printf("%d is the maximum number\n", max)
	fmt.Printf("%d is the minimum number\n", min)
}
