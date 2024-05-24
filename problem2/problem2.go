package main

import (
	"fmt"
)

func drawXYZ(N int) string {
	var result string // Inisialisasi variabel result
	angka := 1

	for i := 0; i < N; i++ {
		for j := 0; j < N; j++ {
			if angka%3 == 0 {
				result += fmt.Sprintf("X ")
			} else if angka%2 == 0 {
				result += fmt.Sprintf("Z ")
			} else {
				result += fmt.Sprintf("Y ")
			}
			angka++
		}
		result += "\n" // Tambahkan newline setelah satu baris selesai
	}
	return result
}

func main() {
	fmt.Println(drawXYZ(5))
}
