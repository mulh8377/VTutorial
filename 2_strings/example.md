##  string_system_calls examples:
print: 	 	 	 
 	test4,test2,test3,test1
panic: 	 	 	 
 	ex: panic(ex)
error: 	 	 	 
 	ex: error(ex)
exit: 	 	 	 
 	ex: exit(ex.hash())

##  string_delimiter_params ex
split: 	 	 	 
 	["test4", "test2", "test3", "test1"]
sort: 	 	 	 
 	["test1", "test2", "test3", "test4"]
split_into_lines: 	 	 	 
 	["test4,test2,test3,test1"]
join: 	 	 	 
 	test4,test2,test3,test1

##  string_bool_return examples:
contains: 	 	 	 
 	string:test4,test2,test3,test1
 	checking:test4
 	true
starts_with: 	 	 	 
 	string:test4,test2,test3,test1
 	checking:test4
 	true
ends_with: 	 	 	 
 	string:test4,test2,test3,test1
 	checking:test1
 	true
isnil: 	 	 	 
 	string:test4,test2,test3,test1
 	checking:test4,test2,test3,test1
 	false

##  string_heap_funcs examples:
replace:test4,test2,test3,test1	 	 	 
 	with:stuff,to,split
 	stuff,to,split
malloc: 	 	 	 
 	space:10	 	 	 
 	word:
free: 	 	 	 
 	freed:size:10	 	 	 
 	
##  string_void_params examples:
to_upper: 	 	 	 
 	string:test4,test2,test3,test1
 	upper:TEST4,TEST2,TEST3,TEST1
 	
to_lower: 	 	 	 
 	string:TEST4,TEST2,TEST3,TEST1
 	upper:test4,test2,test3,test1
 	
trim: 	 	 	 
 	string:,,test2,test3,test1
 	after:test2,test3,test1
 	
trim_space: 	 	 	 
 	string: test3,test1
 	after:test3,test1
 	

## string_int_params examples:
left: test4,test2,test3,test1	 	 	 
 	- not working
right: test4,test2,test3,test1	 	 	 
 	- not working
sub_str: test4,test2,test3,test1	 	 	 
 	 -not working

 -##  string_int_returns examples:
hash: test4,test2,test3,test1	 	 	 
 	
 -value: 1771129662
index: test4,test2,test3,test1	 	 	 
 	val: test4	 	 	 
 	 ---buggy
last_index: test4,test2,test3,test1	 	 	 
 	val: test4	 	 	 
 	 ---buggy
index_after: test4,test2,test3,test1	 	 	 
 	val: test4	 	 	 
 	 ---buggy
