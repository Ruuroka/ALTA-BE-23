package main

import (
	"fmt"
)

func maxSumSubarray(arr []int, k int) int {
	if len(arr) < k {
		return 0
	}

	// Inisialisasi sum awal untuk window pertama
	windowSum := 0
	for i := 0; i < k; i++ {
		windowSum += arr[i]
	}

	maxSum := windowSum

	// Geser window dari awal ke akhir array
	for i := k; i < len(arr); i++ {
		windowSum += arr[i] - arr[i-k] // Tambahkan elemen baru dan kurangi elemen pertama dari window sebelumnya
		if windowSum > maxSum {
			maxSum = windowSum
		}
	}

	return maxSum
}

func main() {
	fmt.Println(maxSumSubarray([]int{2, 1, 5, 1, 3, 2}, 3)) // Output: 9
	fmt.Println(maxSumSubarray([]int{2, 3, 4, 1, 5}, 2))    // Output: 7
	fmt.Println(maxSumSubarray([]int{1, 2, 3, 4, 5}, 5))    // Output: 15
}
