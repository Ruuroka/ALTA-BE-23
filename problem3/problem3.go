package main

import "fmt"

type Student struct {
	name  []string
	score []int
}

func (s Student) Average() float64 {
	total := 0
	for _, score := range s.score {
		total += score
	}
	return float64(total) / float64(len(s.score))
}

func (s Student) Min() (min int, name string) {
	min = s.score[0]
	name = s.name[0]
	for i, score := range s.score {
		if score < min {
			min = score
			name = s.name[i]
		}
	}
	return
}

func (s Student) Max() (max int, name string) {
	max = s.score[0]
	name = s.name[0]
	for i, score := range s.score {
		if score > max {
			max = score
			name = s.name[i]
		}
	}
	return
}

func main() {
	var a = Student{}
	for i := 0; i < 5; i++ {
		var name string
		fmt.Print("Input " + fmt.Sprint(i+1) + " Student's Name: ")
		fmt.Scan(&name)
		a.name = append(a.name, name)

		var score int
		fmt.Print("Input " + fmt.Sprint(i+1) + " Student's Score: ")
		fmt.Scan(&score)
		a.score = append(a.score, score)
	}

	fmt.Println("\n\nAverage Score of Students:", a.Average())
	scoreMax, nameMax := a.Max()
	fmt.Println("Max Score of Students:", nameMax, "(", scoreMax, ")")
	scoreMin, nameMin := a.Min()
	fmt.Println("Min Score of Students:", nameMin, "(", scoreMin, ")")
}
