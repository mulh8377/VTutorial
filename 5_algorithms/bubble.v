
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
	//println(b)
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

fn iterative_search(b []int, target int) []int {
	mut pos := []int
	for i in 0..b.len {
		if b[i] == target {
			pos << i			
		}
	}
	return pos
}

pub fn main() {
	mut x := gen_list(50, 20)
	println(x)
	mut found := iterative_search(x, 18)
	mut ref := x
	println(found)
	//println(x)
	bubble_sort(mut x, x.len)

	ref.sort()
	println(ref)
	println(x)

	found = iterative_search(x, 18)
	println(found)
}