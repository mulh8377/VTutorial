struct Column {
	id string
mut:
	value string
}
fn initialize_column(i string, v string) Column {
	return Column{id:i, value: v}
}

fn (c mut Column) initialize_value(v string) {
	c.value = v
}

fn (c Column) get_id() string {
	return c.id
}

fn (c Column) get_value () string {
	return c.value
}

fn (c Column) print_column() string {
	return '{id: $c.id, value: $c.value}'
}


struct Row {
	index int
mut:
	headers []string
	col []Column
}

fn initialize_row(i int) Row {
	return Row{index:i}
}

fn (r Row) get_headers() []string {
	return r.headers
}

fn (r mut Row) add_column(c Column) {
	r.headers << "index"
	r.headers << c.get_id()
	r.col << c
}

fn (r Row) print_row() []string {
	mut res := []string
	id := r.index.str()
	res << id 
	for c in r.col {
		res << c.get_value()
	} 
	return res
}

struct Table {
	id string
	headers []string
mut:
	size int
	row []Row
}

fn initialize_table(i string, h []string ) Table {
	return Table{id:i, headers:h}
}

struct TableMap {
mut:
	lookup map[string]Table
}

fn start() Row {
	mut row_begin := initialize_row(0)
	column_name := initialize_column('name', 'johnny')
	row_begin.add_column(column_name)


	//print the headers ---
	println(row_begin.get_headers())

	return row_begin
}

pub fn main() {
	r := start()
	println(r.print_row())
}