/*
-$- /t/t/t @FILE:class_header.v
-$- /t/t/t @AUTHOR:mulh8377
-$- /t/t/t @VERSION:1.0
-$- /t/t/t @DESCRIPTION:generates a very generic class_header and outputs it the terminal
*/


const (
	BEGIN = "/*"
	TOKEN = "-$-"
	SEP = " /t/t/t "

	FILE = "@FILE"
	AUTHOR = "@AUTHOR"
	VERSION = "@VERSION"
	DESCRIPTION = "@DESCRIPTION"
	END = "*/"
)

fn main() {
	run()
}

fn run () {
	mut file_info := []string
	f_test := "<file-name>"
	a_test := "<file-author>"
	v_test := "<file-version>"
	d_test := "<file-description>"

	file_info << head()
	file_info << file(f_test)
	file_info << author(a_test)
	file_info << version(v_test)
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

fn version(v string) string {
	v_info := TOKEN + SEP + VERSION + ":" + v
	return v_info
}

fn author(a string) string {
	a_info := TOKEN + SEP + AUTHOR + ":" + a
	return a_info
}

fn file(f string) string {
	f_info := TOKEN + SEP + FILE + ":" + f
	return f_info
}
fn descript(d string) string {
	d_info := TOKEN + SEP + DESCRIPTION + ":" + d
	return d_info
}
