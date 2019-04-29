as yet unclassified
grammar 

	| grammar |
	grammar := EGrammar from: {
		{#Sum . {#Sum . [:c | c = $+ or: [c = $-]] . #Product} . 
			[:node | '(' , (node at: 1) value , (node at: 2) name , (node at: 3) value , ')']}.
		{#Sum . {#Product} . 
			[:node | (node at: 1) value ]}.
		{#Product . {#Product . [:c | c = $* or: [c = $/]] . #Factor} . 
			[:node | '(' , (node at: 1) value , (node at: 2) name , (node at: 3) value , ')']}.
		{#Product . {#Factor} . 
			[:node | (node at: 1) value ]}.
		{#Factor .{[:c | c = $(] . #Sum .  [:c | c = $)]} . 
			[:node | (node at: 2) value]}.
		{#Factor . {#Number} . 
			[:node | (node at: 1) value]}.
		{#Number . {[:c | c >= $0 and: [c < $9]] . #Number} . 
			[:node | (node at: 1) name , (node at: 2) value]}.
		{#Number . {[:c | c >= $0 and: [c < $9]]} . 
			[:node | (node at: 1) name]}
	}.
	grammar startRuleName: #Sum.
	^ grammar