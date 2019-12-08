module main
const (
	HEADER = "## Review Guide"
)

const (
	HW1 = "## Homework 1"
	HW2 = "## Homework 2"
	HW3 = "## Homework 3"
	HW4 = "## Homework 4"
)

const (
	A = '## PAPER A'
	B = '## PAPER B'
	C = '## PAPER C'
	D = '## PAPER D'
	E = '## PAPER E'
	F = '## PAPER F'
	G = '## PAPER G'
	H = '## PAPER H'
	I = '## PAPER I'
	J = '## PAPER J'
	K = '## PAPER K'
	L = '## PAPER L'
	M = '## PAPER M'
	N = '## PAPER N'
)

const (
	TABS = '\t'
	QUESTION = '- Q: '
	ANSWER = '- A: '
)	

fn output(info []string) {
	for i in info {
		println(i)
	}
}

fn paper_a() {
	mut info := []string
	info << A
	mut question_ := 'According to The Byzantine Generals Problem, if all nodes use "oral messages" (unsigned messages) to communicate, what is the most number of faulty processors that a system of 24 nodes can handle?'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_b() {
	mut info := []string
	info << B
	mut question_ := 'According to Leslie Lamport’s The Part-Time Parliament paper, how does the Complete Protocol add to the Basic Protocol in the Paxos Algorithm?'
	mut question_a := 'A. Guarantees progress'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to Lamport, the Paxon parliaments legislator corresponds to which part in a distributed system?'
	question_a = 'A. Server'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_c() {
	mut info := []string
	info << C
	mut question_ := 'According to the OceanStore paper, why is a ‘Master Replica’ not used for conflict resolution?
A. Incompatible with the untrusted infrastructure assumption.'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_d() {
	mut info := []string
	info << D
	mut question_ := 'According to The Byzantine Generals Problem, if all nodes use "oral messages" (unsigned messages) to communicate, what is the most number of faulty processors that a system of 24 nodes can handle?'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_e() {
	mut info := []string
	info << E
	mut question_ := 'According to The Byzantine Generals Problem, if all nodes use "oral messages" (unsigned messages) to communicate, what is the most number of faulty processors that a system of 24 nodes can handle?'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_f() {
	mut info := []string
	info << F
	mut question_ := 'According to The Byzantine Generals Problem, if all nodes use "oral messages" (unsigned messages) to communicate, what is the most number of faulty processors that a system of 24 nodes can handle?'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_h() {
	mut info := []string
	info << H
	mut question_ := 'According to The Byzantine Generals Problem, if all nodes use "oral messages" (unsigned messages) to communicate, what is the most number of faulty processors that a system of 24 nodes can handle?'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_g() {
	mut info := []string
	info << G
	mut question_ := 'According to The Byzantine Generals Problem, if all nodes use "oral messages" (unsigned messages) to communicate, what is the most number of faulty processors that a system of 24 nodes can handle?'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_i() {
	mut info := []string
	info << I
	mut question_ := 'According to The Byzantine Generals Problem, if all nodes use "oral messages" (unsigned messages) to communicate, what is the most number of faulty processors that a system of 24 nodes can handle?'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_j() {
	mut info := []string
	info << J
	mut question_ := 'According to The Byzantine Generals Problem, if all nodes use "oral messages" (unsigned messages) to communicate, what is the most number of faulty processors that a system of 24 nodes can handle?'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_k() {
	mut info := []string
	info << K
	mut question_ := 'According to The Byzantine Generals Problem, if all nodes use "oral messages" (unsigned messages) to communicate, what is the most number of faulty processors that a system of 24 nodes can handle?'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_l() {
	mut info := []string
	info << L
	mut question_ := 'According to The Byzantine Generals Problem, if all nodes use "oral messages" (unsigned messages) to communicate, what is the most number of faulty processors that a system of 24 nodes can handle?'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_m() {
	mut info := []string
	info << M
	mut question_ := 'According to The Byzantine Generals Problem, if all nodes use "oral messages" (unsigned messages) to communicate, what is the most number of faulty processors that a system of 24 nodes can handle?'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}

fn paper_n() {
	mut info := []string
	info << N
	mut question_ := 'According to The Byzantine Generals Problem, if all nodes use "oral messages" (unsigned messages) to communicate, what is the most number of faulty processors that a system of 24 nodes can handle?'
	mut question_a := '7'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to The Byzantine General Problem, if signed messages are used, what is the minimum number of functioning nodes allowed?'
	question_a = '2'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many generals are needed to cope of m amount of traitors?'
	question_a = '3m+1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following assumptions do not embody the definition of an oral message for the generals message system'
	question_a = 'a traitorous generals signature cannot be forged by another traitor.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals Problem, how is majority(v1, ... , vn-1) calculated when v1, ... , vn-1 are all the same value?'
	question_a = 'The median of the vi, assuming they come from an ordered set'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'According to the Byzantine Generals problem, which of the following statements is NOT true about the signed message algorithm?'
	question_a = 'A loyal general can forge signatures without being detected.'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a

	question_ = 'Which of the following is false about the downsides of the Byzantine Generals Problem?'
	question_a = 'It is possible to reduce the amount of information transferred so any downsides are eliminated.  '
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	question_ = 'According to the Byzantine Generals Problem, using oral messages, how many traitors that 12m+1 generals could detect? (m > 0)'
	question_a = '3m - 1'
	info << TABS + QUESTION + question_
	info << TABS + TABS + ANSWER + question_a
	
	output(info)

}


pub fn main() {
	println(HEADER)
	paper_a()
	
	paper_b()
	
	paper_c()
	
	paper_d()
	
	paper_e()
	
	paper_f()
	
	paper_g()
	
	paper_h()
	
	paper_i()
	
	paper_j()
	
	paper_k()
	
	paper_l()
	
	paper_m()
	
	paper_n()
	
}