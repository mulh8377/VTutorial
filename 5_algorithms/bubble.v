
import (
	rand
)

fn gen_list(y int, s int) []int {
	mut list := [0].repeat(s)
	rand.seed(y)

	for i in 0..s {
		list[i] = rand.next(s)
	}
	return list
}

fn bubble_sort(b mut []int, size int) {
	println(b)
	for i in 0..size-1 {
		for j in i+1..size {
			//print("I: " + b[i].str())
			//println(" J: " + b[j].str())
			if b[i] > b[j] {
				temp := b[i]
				b[i] = b[j]
				b[j] = temp
			}
			else {
				continue
			}
		}
	}
}

pub fn main() {
	mut x := gen_list(50, 20)
	println(x)
	mut ref := x
	//println(x)
	bubble_sort(mut x, x.len)

	ref.sort()
	println(ref)
	println(x)
}