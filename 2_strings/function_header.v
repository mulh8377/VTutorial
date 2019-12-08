/*
-$- /t/t/t @FILE:function_header.v
-$- /t/t/t @AUTHOR:mulh8377
-$- /t/t/t @VERSION:1.0
-$- /t/t/t @DESCRIPTION:generates a very basic function_header and outputs it to the terminal --
*/


const (
	BEGIN = "/*"
	TOKEN = "-$-"
	SEP = " /t/t/t/t "

	FUNCTION = "@FUNCTION"
	PARAM = "@PARAM"
	RET = "@RETURN"
	DESCRIPTION = "@DESCRIPTION"
	END = "*/"
)

fn main () {
	arguments := os.args[1...]
	run()
}



fn run () {
	mut file_info := []string
	f_test := "<function>"
	p_test := "<paramaters>"
	r_test := "<return value>"
	d_test := "<description>"

	file_info << head()
	file_info << func(f_test)
	file_info << param(p_test)
	file_info << ret(r_test)
	file_info << descript(d_test)
	file_info << tail()
	//generate_class_comments(file_info)
	output(file_info)
}

pub fn output(out []string) {
	for o in out {
		println(o)
	}
}

fn head() string {
	return BEGIN
}

fn tail() string {
	return END
}

fn func(f string) string {
	f_info := TOKEN + SEP + FUNCTION + ":" + f
	return f_info
}

fn param(a string) string {
	p_info := TOKEN + SEP + PARAM + ":" + a
	return p_info
}

fn ret(r string) string {
	r_info := TOKEN + SEP + RET + ":" + r
	return r_info
}

fn descript(d string) string {
	d_info := TOKEN + SEP + DESCRIPTION + ":" + d
	return d_info
}