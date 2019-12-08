/*
	defines the language {w = 0(^n)1(^n) | n > 0}
	does some nice reverse printing at the end :)
*/
const (
	ZERO = '0'
	ONE = '1'
)
fn get_zeros(n int) string {
	mut res := ZERO
	for i := 0; i < n; i++ {
		res = res + ZERO
	}
	return res
}
fn get_ones(n int) string {
	mut res := ONE
	for i := 0; i < n; i++ {
		res = res + ONE
	}
	return res
}

fn get_string(n int) string {
	left := get_zeros(n)
	right := get_ones(n)
	return left + right
}
fn out(out []string) {
	printr := out.reverse()
	for i, p in printr {
		println(i.str() + ':' + p)
	}
}
pub fn main() {
	println('function practice')
	mut output := []string
	for i := 0; i < 10; i++ {
		output << get_string(i)
	}
	out(output)
}