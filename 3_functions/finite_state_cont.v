
//Language
const (
	ZERO = '0'
	ONE = '1'
	SEP = ' '
)

//operations
const (
	UNION = "||"
	INTERSECT = "&&"
	SUB = "-"
	MERGE = "++"
)

const (
	KLEENE = "*"
	PLUS = "+"
	AND = "&"
	OR = "|"
)

struct Operation {
mut:
	op string
	len int
}

fn set_operation(o string, l int) Operation {
	return Operation{op:o, len:l}
}

fn get_op_string(o Operation) string {
	return o.op
}
fn get_op_len(o Operation) int {
	return o.len
}

fn expand_operation(o Operation) []string {
    mut res := []string
	element := get_op_string(o)
	len := get_op_len(o)
	//println('ELEMENT: ' + element)

	if element.ends_with(KLEENE) {
		alpha := element.limit(len - 1)
		res = kleene_operation(alpha)
	}

	if element.ends_with(PLUS) {
		alpha := element.limit(len - 1)
		res = plus_operation(alpha)
	}
	return res
	
}

fn split_input(s string) []string {
	return s.split(' ')
}


fn kleene_operation(input string) []string {
	mut res := []string
	mut holdr := input
	res << ""
	res << holdr
	for i := 0; i < 10; i++ {
		holdr = holdr + input
		res << holdr
	}
	return res
}

fn plus_operation(input string) []string {
	mut res := []string
	mut holdr := input
	for i := 0; i < 10; i++ {
		res << holdr
		holdr = holdr + input
	}
	return res
}

fn union_operation(left []string, right []string) []string {
	mut union_res := []string
	union_res = left

	for r in right {
		union_res << r
	}
	union_res.sort_by_len()

	return union_res.reverse()
}

fn output_storage(stor []string) {
	for i, s in stor{
		println(i.str() + ":" + s)
	}
}

fn do_operation(left []string, right []string, operation string) {
	if operation == UNION {
		u_res := union_operation(left, right)
		output_storage(u_res)
	}
	else if operation == AND {
		//a_res := and_operation(left, right)
		//output_storage(a_res)
	}
	else {
		println("wrong opcode")
	}
}

pub fn main() {
	test := ZERO + KLEENE + SEP + UNION + SEP + ONE + ZERO + PLUS
	storage := split_input(test)
	//println(storage)
	test_left := set_operation(storage[0], storage[0].len)
	//println(test_left)
	test_right := set_operation(storage[2], storage[2].len)
	//println(test_right)


	//println(get_op_len(test_left))
	//println(get_op_string(test_left))

	//println(get_op_len(test_right))
	//println(get_op_string(test_right))

	left := expand_operation(test_left)
	right := expand_operation(test_right)
	do_operation(left, right, storage[1])
	//u_res := union_operation(test_left, test_right)
	//output_storage(u_res)
}