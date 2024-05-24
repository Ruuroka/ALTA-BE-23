package main

import (
	"fmt"
	"strings"
)

func PlayWithAsterik(n int) string {
	var result strings.Builder

	for i := 1; i <= n; i++ {
		// Cetak spasi di sebelah kiri
		for j := i; j < n; j++ {
			result.WriteString(" ")
		}
		// Cetak asterik dan spasi di antara asterik
		for k := 1; k <= i; k++ {
			result.WriteString("* ")
		}
		// Pindah ke baris berikutnya
		result.WriteString("\n")
	}
	return result.String()
}

func main() {
	fmt.Println(PlayWithAsterik(5))
}
