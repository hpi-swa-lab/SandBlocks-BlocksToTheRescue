as yet unclassified
grammar 

	| grammar |
	grammar := EGrammar from: {
		{#Whitespace . {[:c | c = Character space or: [c = Character cr or: [c = Character tab]]]} . [:node :info | ]}.
		{#Whitespace . {[:c | c = Character space or: [c = Character cr or: [c = Character tab]]] . #Whitespace} . [:node :info | ]}.
		
		{#OptWhitespace . {} . [:node :info | ]}.
		{#OptWhitespace . {#Whitespace . #OptWhitespace } . [:node :info | ]}.
		
		{#Min1Whitespace . {#Whitespace} . [:node :info | ]}.
		{#Min1Whitespace . {#Whitespace . #Min1Whitespace } . [:node :info | ]}.
		
		{#AllExceptPrime . {[:c | c ~= $']} . [:node :info | (node at: 1) value: nil]}.
		
		{#Letter . {[:c | (c >= $a and: [c <= $z]) or: [(c >= $A and: [c <= $Z])]]} . [:node :info | (node at: 1) value: nil ]}.
		{#Digit . {[:c | (c >= $0 and: [c <= $9])]} . [:node :info | (node at: 1) value: nil]}.
		
		{#Number . {#Digit} . [:node :info | (node at: 1) value: nil]}.
		{#Number . {#Digit . #Number} . [:node :info | ((node at: 1) value: nil) , ((node at: 2) value: nil)]}.
		
		{#Word . {#Letter} . [:node :info | (node at: 1) value: nil]}.
		{#Word . {#Letter . #Word} . [:node :info | ((node at: 1) value: nil ), ((node at: 2) value: nil)]}.
		
		{#Grammar . {#OptWhitespace . #Rule . #OptWhitespace} . [:node :info | (node at: 2) value: nil]}.
		{#Grammar . {#OptWhitespace . #Rule . #OptWhitespace . [:c | c = $.] . #Grammar} . [:node :info | ((node at: 2) value: nil) , '.' , Character cr , ((node at: 5) value: nil)]}.
		
		{#Rule . {#RuleName . #OptWhitespace . [:c | c = $-] . [:c | c = $>] . #OptWhitespace . #RuleBody} . [:node :info | | name | 
			name := ((node at: 1) value: nil). 
			name , ' -> ' , ((node at: 6) value: name) ]}.
		
		{#RuleName . {#Word} . [:node :info | (node at: 1) value: nil]}.
		
		{#RuleBody . {#SubRule} . [:node :info | (node at: 1) value: info]}.
		{#RuleBody . {#SubRule . #OptWhitespace . [:c | c = $|] . #OptWhitespace . #SubRule} . [:node :info | ((node at: 1) value: info) ,'.', Character cr , info , ' -> ' ,  ((node at: 5) value: info)]}.
		
		{#SubRule . {#RuleVariation . #OptWhitespace . #SemanticAction} . [:node :info | | action |
			action := ((node at: 3) value: nil).
			 ((node at: 1) value: {info . action}) , ' ' , action]}.
		
		{#TerminalContent . {#AllExceptPrime} . [:node :info | (node at: 1) value: nil]}.
		{#TerminalContent . {#AllExceptPrime . #TerminalContent} . [:node :info | ((node at: 1) value: nil) , ((node at: 2) value: nil)]}.
		
		{#Terminal . {[:c | c = $'] . #TerminalContent . [:c | c = $']} . [:node :info | (node at: 2) value: nil]}.
		{#NonTerminal . {#Word} . [:node :info | (node at: 1) value: nil]}.
		
		{#Symbol . {#Terminal} . [:node :info | (node at: 1) value: nil]}.
		{#Symbol . {#NonTerminal} . [:node :info | (node at: 1) value: nil]}.
		
		{#Optional . {#Symbol . [:c | c = $?]} . [:node :info | (node at: 1) value: nil]}.
		{#OneOrMore . {#Symbol  . [:c | c = $+]} . [:node :info | (node at: 1) value: nil]}.
		{#ZeroOrMore . {#Symbol . [:c | c = $*]} . [:node :info | (node at: 1) value: nil]}.
		
		{#RulePart . {#Symbol} . [:node :info | (node at: 1) value: nil]}.
		{#RulePart . {#Group} . [:node :info | (node at: 1) value: nil]}.
		{#RulePart . {#Alternative} . [:node :info | (node at: 1) value: nil]}.
		{#RulePart . {#Optional} . [:node :info | (node at: 1) value: nil]}.
		{#RulePart . {#OneOrMore} . [:node :info | (node at: 1) value: nil]}.
		{#RulePart . {#ZeroOrMore} . [:node :info | (node at: 1) value: nil]}.
		
		{#Alternative . {#RulePart . #OptWhitespace . [:c | c = $|] . #OptWhitespace . #RulePart} . [:node :info | '(' , ((node at: 1) value: nil) , ' | ' , ((node at: 5) value: nil) , ')']}.
		{#Alternative . {#RulePart . #OptWhitespace . [:c | c = $|] . #OptWhitespace . #Alternative} . [:node :info | '(' , ((node at: 1) value: nil) , ' | ' , ((node at: 5) value: nil) , ')']}.
		
		{#Group . {[:c | c = $(] . #RuleVariation . [:c | c = $)]} . [:node :info | '(' ,  ((node at: 2) value: nil) ,  ')']}.
		
		{#RuleVariation . {} . [:node :info | ]}.
		{#RuleVariation . {#RulePart} . [:node :info | (node at: 1) value: nil]}.
		{#RuleVariation . {#RulePart . #Min1Whitespace  . #RuleVariation} . [:node :info | ((node at: 1) value: nil) , ' ' , ((node at: 3) value: nil)]}.
		
		{#Child . {[:c | c = $@] . #Number} . [:node :info | '(node at: ' , ((node at: 2) value: nil) , ') value']}.
		
		{#ChildConcat . {#Child} . [:node :info | (node at: 1) value: nil ]}.
		{#ChildConcat . {#Child . #OptWhitespace . [:c | c = $,] . #OptWhitespace . #ChildConcat} . [:node :info | ((node at: 1) value: nil) , ' , ' , ((node at: 5) value: nil)]}.
		
		{#ActionBody . {#OptWhitespace.  [:c | c = $?]  . [:c | c = $?] . #OptWhitespace . [:c | c = $=] . #OptWhitespace  . #ChildConcat} . [:node :info | (node at: 7) value: nil]}.
		
		{#SemanticAction . {[:c | c = $<] . [:c | c = $|] . #ActionBody . [:c | c = $|] . [:c | c = $>]} . [:node :info | '[:node | ' , ((node at: 3) value: nil) , ']']}.
		
	}.
	grammar startRuleName: #Grammar.
	^ grammar