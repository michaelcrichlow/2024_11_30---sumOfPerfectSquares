package test

import "core:fmt"
import "core:sys/windows"
import "core:time"
print :: fmt.println

main :: proc() {
	windows.SetConsoleOutputCP(windows.CODEPAGE.UTF8)
	start: time.Time = time.now()

	// code goes here
	print(sumOfPerfectSquares([]int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}))

	elapsed: time.Duration = time.since(start)
	print("Odin took:", elapsed)

	// OUTPUT:
	// 14
	// Odin took: 77.6µs
}

sumOfPerfectSquares :: proc(l: []int) -> int {
	total := 0
	for val in l {
		if is_perfect_square(val) {
			total += val
		}
	}

	return total
}


is_perfect_square :: proc(n: int) -> bool {
	i := 1
	for {
		if (i * i) < n {
			// do nothing
		} else if (i * i) == n {
			return true
		} else if (i * i) > n {
			return false
		}

		i += 1
	}
}
