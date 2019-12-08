module main

const (
	HEADER = "# vlib string.v"
)

fn main() {
	println(HEADER)
	run()
}

fn run() {
	ex := "test4,test2,test3,test1"
	string_system_calls(ex)
}

fn string_system_calls(ex string) {
	println("##  string_system_calls examples:")
	print("\t - print: \t \t \t \t" + ex + '\n \t')
	print('\n')


	print("\t - panic: \t \t \t \n \t")
	print("\t ex: panic(ex)")
	print('\n')

	print('\t - error: \t \t \t \n \t')
	//op := error(ex)
	print("\t ex: error(ex)")
	print('\n')

	print("\t - exit: \t \t \t \n \t")
	//exit(ex.hash())
	print("\t ex: exit(ex.hash())")
	//op = free(op)
	print('\n')
	
}