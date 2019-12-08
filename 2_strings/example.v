/*
-$- /t/t/t @FILE: example.v
-$- /t/t/t @AUTHOR: mulh8377
-$- /t/t/t @VERSION: 1.0
-$- /t/t/t @DESCRIPTION: very simple examples using the vlib string library.
*/

module main

import (
	time
)

fn main() {
	run()
}

fn run() {
	mut ex := "test4,test2,test3,test1"
	string_system_calls(ex)
	print('\n')

	string_delimiter_params(ex)
	print('\n')

	string_bool_return(ex)
	print('\n')


	string_heap_funcs(ex)
	print('\n')

	string_void_params(ex)
	print('\n')

	string_int_params(ex)
	print('\n')

	string_int_returns(ex)


	ex = "Finished"

}

pub fn string_int_params(ex string) {
	println("## string_int_params examples:")
	val := 4
	print("left: " + ex + "\t \t \t \n \t")
	//left_str := ex.left(4)
	//print("after : + "left_str + "\t \t \t \n \t")
	println("- not working")


	print("right: " + ex + "\t \t \t \n \t")
	//right_str := ex.right(4)
	//print("after : + " ex.right(10) + "\t \t \t \n \t")
	println("- not working")


	print("sub_str: " + ex + "\t \t \t \n \t")
	//sub_ex := ex.substr(4, 8)
	//println(" -after :" + ex.substr(4, 8) + "\t \t \t \n \t")
	println(" -not working")
}

fn string_int_returns(ex string) {

	println(" -##  string_int_returns examples:")
	p := "test4"
	//hash function --> very nice !
	print("hash: " + ex + "\t \t \t \n \t")
	println("")
	val := ex.hash()
	println(" -value: " + val.str())
	
	print("index: " + ex + "\t \t \t \n \t")
	print("val: " + p + "\t \t \t \n \t")
	val2 := ex.index(p)
	println(" ---buggy")


	print("last_index: " + ex + "\t \t \t \n \t")
	print("val: " + p + "\t \t \t \n \t")
	val3 := ex.last_index(p)

	//println(" -value: " + val.str())
	println(" ---buggy")

	print("index_after: " + ex + "\t \t \t \n \t")
	print("val: " + p + "\t \t \t \n \t")
	val4 := ex.index_after(p, 5)
	println(" ---buggy")
}

fn string_delimiter_params(ex string) {

	println("##  string_delimiter_params ex")

	mut splt := ex.split(',')
	print("split: \t \t \t \n \t")
	println(splt)

	splt.sort()
	print("sort: \t \t \t \n \t")
	println(splt)

	lnes := ex.split_into_lines()
	print("split_into_lines: \t \t \t \n \t")
	println(lnes)

	lnejoin := lnes.join(',')
	print("join: \t \t \t \n \t")
	println(lnejoin)
	

}

fn string_bool_return(ex string) {
	println("##  string_bool_return examples:")
	strt := "test4"
	endr := "test1"

	print("contains: \t \t \t \n \t")
	print("string:" + ex + "\n \t")
	print("checking:" + strt + "\n \t")
	println(ex.contains(strt))

	print("starts_with: \t \t \t \n \t")
	print("string:" + ex + "\n \t")
	print("checking:" + strt + "\n \t")
	println(ex.starts_with(strt))

	print("ends_with: \t \t \t \n \t")
	print("string:" + ex + "\n \t")
	print("checking:" + endr + "\n \t")
	println(ex.ends_with(endr))


	print("isnil: \t \t \t \n \t")
	print("string:" + ex + "\n \t")
	print("checking:" + ex + "\n \t")
	println(isnil(ex))

}



fn string_void_params(ex string) {
	println("##  string_void_params examples:")

	// to int function --> doesnt work?
	//println(ex.to_())


	print("to_upper: \t \t \t \n \t")
	print("string:" + ex + "\n \t")
	println('upper:' + ex.to_upper() + "\n \t")

	ex_up := ex.to_upper()

	print("to_lower: \t \t \t \n \t")
	print("string:" + ex_up + "\n \t")
	println('upper:' + ex_up.to_lower() + "\n \t")

	
	trimd := ex.replace('test4', ',')
	print("trim: \t \t \t \n \t")
	print('string:' + trimd + "\n \t")
	println('after:' + trimd.trim(',') + '\n \t')

	trimd_space := ex.replace('test4,test2,', ' ')

	print("trim_space: \t \t \t \n \t")
	print('string:' + trimd_space + "\n \t")
	println('after:' + trimd_space.trim_space() + '\n \t')
}

fn string_heap_funcs(ex string) {
	
	println("##  string_heap_funcs examples:")

	//replace a string
	test := "stuff,to,split"
	ex.replace(ex, test)
	print("replace:" + ex + "\t \t \t \n \t")
	print("with:" + test + "\n \t")
	println(test)
	
	print("malloc: \t \t \t \n \t")
	size := 10
	word := malloc(size)
	
	print("space:" + size.str() + "\t \t \t \n \t")
	print("word:" + word.str() + "\t \t \t \n \t")
	println('')
	time.sleep(1)

	print("free: \t \t \t \n \t")
	print("freed:" + word.str() + "\t \t \t \n \t")
	print("size:" + size.str() + "\t \t \t \n \t")
	//free(word)
	
	
}

fn string_system_calls(ex string) {
	println("##  string_system_calls examples:")
	print("print: \t \t \t \n \t")
	print(ex)
	print('\n')


	print("panic: \t \t \t \n \t")
	print("ex: panic(ex)")
	print('\n')

	print('error: \t \t \t \n \t')
	//op := error(ex)
	print("ex: error(ex)")
	print('\n')

	print("exit: \t \t \t \n \t")
	//exit(ex.hash())
	print("ex: exit(ex.hash())")
	//op = free(op)
	print('\n')
	
}