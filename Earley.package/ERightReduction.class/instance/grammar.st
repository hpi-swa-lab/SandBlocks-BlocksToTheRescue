as yet unclassified
grammar 

	| grammar |
	grammar := EGrammar from: {
		{#s . {[:c | c = $a] . #s} . [:node | ]}.
		{#s . {} . [:node | ]}.
	}.
	grammar startRuleName: #s.
	^ grammar