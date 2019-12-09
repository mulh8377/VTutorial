struct Edge {
	token string
	src string
	dst string
}

struct State {
	id string
mut:
	edges []Edge	
}

struct Machine {
	id string
mut:
	states []State
}

struct MapMachine {
mut:
	keys []string
	info map[string]Machine
}

fn initialize_edge(t string, s string, d string) Edge{
	return Edge{token: t, src:s, dst: d}
}

fn print_edge(e Edge) string {
	return '{token: $e.token, src: $e.src, dst: $e.dst}'
}

fn initialize_state(i string) State {
	return State{id: i, edges: []}
}

fn (s mut State) add_edge (e Edge) {
	s.edges << e
}

fn get_id(s State) string {
	return s.id
}

fn get_edges(s State) []Edge {
	return s.edges
}

fn print_edges(s State) []string  {
	mut s_edges := []string
	for e in s.edges {
		s_edges << print_edge(e)
	}
	return s_edges
}

fn print_state(s State) []string {
	mut res := []string
	id := '{id: $s.id}'
	res << id
	for e in s.edges{
		res << print_edge(e)
	}
	return res
}

fn initialize_machine(id string) Machine {
	return Machine{id:id, states: []}
}

fn (m Machine) get_machine_id() string {
	return m.id
}

fn (m Machine) print_machine() []string {
	mut res := []string
	res << m.id
	for s in m.states{
		res << print_state(s)
	}

	return res
}


fn (m mut Machine) add_state(s State) {
	m.states << s
}

fn initialize_map_machine() MapMachine{
	return MapMachine{}
}

fn (mapm mut MapMachine) add_to_map (m Machine) {
	machine_hash := m.get_machine_id()
	mapm.info[machine_hash] = m
	mapm.keys << machine_hash
	//println(mapm.info[machine_hash])
}

fn (mapm MapMachine) get_from_map (id string) Machine {
	return mapm.info[id]
}

fn (mapm MapMachine) get_keys() [] string{
	mut keys := []string
	for k in mapm.keys {
		keys << k
	}
	return keys
}

fn initialize_states() []State {
	q_zero := "q_zero"
	q_one := "q_one"
	edge_one := initialize_edge('0', 'q_zero', 'q_one')
	mut state_zero := initialize_state(q_zero)
	mut state_one := initialize_state(q_one)
	state_zero.add_edge(edge_one)
	state_one.add_edge(edge_one)
	//println(get_id(state_zero))
	//println(print_state(state_zero))
	//println(print_edges(state_zero))

	states := [state_zero, state_one]
	return states
}

pub fn main() {
	mut mach := initialize_machine('0')
	//mach.print_machine()
	total_states := initialize_states()
	for s in total_states {
		mach.add_state(s)
	}
	info := mach.print_machine()

	println("creating a mapper for our machines! ")
	mut mapper := initialize_map_machine()
	mapper.add_to_map(mach)

	test := mapper.get_from_map('0')
	//getting the machine from the map!
	println(test.print_machine())

	// getting the keys from our maper
	println(mapper.get_keys())
}	