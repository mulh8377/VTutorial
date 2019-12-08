module main

import (
	rand
)

struct Node {
	id int
mut:
	data string
}

struct List {
	id int
mut: 
	nodes []Node
}

fn initialize_node(id int, data string) Node {
	return Node{id: id, data: data}
}

fn print_node(n Node) string {
	res := "id: " + n.id.str() + ' ' + "data: " + n.data
	return res
}

fn initialize_list(name string) List {
	return List{id: name.int(), nodes: []}
}

fn (l mut List) add_node (n Node) {
	l.nodes << n
}

fn (l mut List) set_nodes(n []Node) {
	l.nodes = n
}

fn (l List) get_nodes () []Node{
	return l.nodes
}


fn (l List) reverse_nodes() []Node {
	reverse_nodes := l.get_nodes().reverse()
	return reverse_nodes
}

fn (l mut List) generate_list(node_cnt int) {
	mut countr := 0
	for {
		if countr >= node_cnt {
			break
		}
		l.add_node(initialize_node(countr, "test"))
		countr ++
	}
}

fn main() {
	println('node and ll example')
	list_name := "test"
	mut list := initialize_list(list_name)

	
	list.generate_list(10)

	mut tot_nodes := list.get_nodes()
	println('printing the nodes')
	for t in tot_nodes {
		println(print_node(t))
	}

	list.set_nodes(list.reverse_nodes())

	tot_nodes = list.get_nodes()
	println("reversed the nodes")
	for t in tot_nodes {
		println(print_node(t))
	}
	


}