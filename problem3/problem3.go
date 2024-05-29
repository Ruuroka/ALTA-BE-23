package main

import (
	"fmt"
)

func ArrayUnique(arr1, arr2 []int) []int {
	// Buat map untuk menyimpan elemen-elemen dari arr2
	elementsMap := make(map[int]bool)
	for _, num := range arr2 {
		elementsMap[num] = true
	}

	// Buat slice untuk menyimpan hasil
	var result []int
	for _, num := range arr1 {
		// Tambahkan ke result jika elemen tidak ada di map
		if !elementsMap[num] {
			result = append(result, num)
		}
	}

	return result
}

func main() {
	fmt.Println(ArrayUnique([]int{1, 2, 3, 4}, []int{1, 3, 5, 10, 16})) // Output: [2, 4]
	fmt.Println(ArrayUnique([]int{3, 8}, []int{2, 8}))                  // Output: [3]
	fmt.Println(ArrayUnique([]int{5, 6, 7}, []int{1, 2, 3, 4}))         // Output: [5, 6, 7]
	fmt.Println(ArrayUnique([]int{10, 20, 30}, []int{20, 40, 50}))      // Output: [10, 30]
}
