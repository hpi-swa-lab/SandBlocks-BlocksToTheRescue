as yet unclassified
grammar 

	| grammar |
	grammar := EGrammar from: {
		{#Whitespace . {[:c | c = Character space or: [c = Character cr or: [c = Character tab]]]} . [:node | ]}.
		{#Whitespace . {[:c | c = Character space or: [c = Character cr or: [c = Character tab]]] . #Whitespace} . [:node | ]}.
		
		{#OptWhitespace . {} . [:node | ]}.
		{#OptWhitespace . {#Whitespace . #OptWhitespace } . [:node | ]}.
		
		{#Min1Whitespace . {#Whitespace} . [:node | ]}.
		{#Min1Whitespace . {#Whitespace . #Min1Whitespace } . [:node | ]}.
		
		{#AllExceptPrime . {[:c | c ~= $']} . [:node | (node at: 1) value]}.
		
		{#Letter . {[:c | (c >= $a and: [c <= $z]) or: [(c >= $A and: [c <= $Z])]]} . [:node | (node at: 1) value ]}.
		{#Digit . {[:c | (c >= $0 and: [c <= $9])]} . [:node | (node at: 1) value]}.
		
		{#Number . {#Digit} . [:node | (node at: 1) value]}.
		{#Number . {#Digit . #Number} . [:node | (node at: 1) value , (node at: 2) value]}.
		
		{#Word . {#Letter} . [:node | (node at: 1) value]}.
		{#Word . {#Letter . #Word} . [:node | (node at: 1) value , (node at: 2) value]}.
		
		{#Grammar . {#OptWhitespace . #Rule . #OptWhitespace} . [:node | (node at: 2) value]}.
		{#Grammar . {#OptWhitespace . #Rule . #OptWhitespace . [:c | c = $.] . #Grammar} . [:node | (node at: 2) value , '.' , Character cr , (node at: 5) value]}.
		
		{#Rule . {#RuleName . #OptWhitespace . [:c | c = $-] . [:c | c = $>] . #OptWhitespace . #RuleBody} . [:node | (node at: 1) value , ' -> ' , (node at: 6) value , Character cr ]}.
		
		{#RuleName . {#Word} . [:node | (node at: 1) value]}.
		
		{#RuleBody . {#SubRule} . [:node | (node at: 1) value]}.
		{#RuleBody . {#SubRule . #OptWhitespace . [:c | c = $|] . #OptWhitespace . #SubRule} . [:node |  (node at: 1) value , Character cr ,'| ' , (node at: 5) value]}.
		
		{#SubRule . {#RuleVariation . #OptWhitespace . #SemanticAction} . [:node | (node at: 1) value , ' ' , (node at: 3) value]}.
		
		{#TerminalContent . {#AllExceptPrime} . [:node | (node at: 1) value]}.
		{#TerminalContent . {#AllExceptPrime . #TerminalContent} . [:node | (node at: 1) value , (node at: 2) value]}.
		
		{#Terminal . {[:c | c = $'] . #TerminalContent . [:c | c = $']} . [:node | (node at: 2) value]}.
		{#NonTerminal . {#Word} . [:node | (node at: 1) value]}.
		
		{#Symbol . {#Terminal} . [:node | (node at: 1) value]}.
		{#Symbol . {#NonTerminal} . [:node | (node at: 1) value]}.
		
		{#Optional . {#Symbol . [:c | c = $?]} . [:node | (node at: 1) value]}.
		{#OneOrMore . {#Symbol  . [:c | c = $+]} . [:node | (node at: 1) value]}.
		{#ZeroOrMore . {#Symbol . [:c | c = $*]} . [:node | (node at: 1) value]}.
		
		{#RulePart . {#Symbol} . [:node | (node at: 1) value]}.
		{#RulePart . {#Group} . [:node | (node at: 1) value]}.
		{#RulePart . {#Alternative} . [:node | (node at: 1) value]}.
		{#RulePart . {#Optional} . [:node | (node at: 1) value]}.
		{#RulePart . {#OneOrMore} . [:node | (node at: 1) value]}.
		{#RulePart . {#ZeroOrMore} . [:node | (node at: 1) value]}.
		
		{#Alternative . {#RulePart . #OptWhitespace . [:c | c = $|] . #OptWhitespace . #RulePart} . [:node |  (node at: 1) value , ' | ' , (node at: 5) value]}.
		
		{#Group . {[:c | c = $(] . #RuleVariation . [:c | c = $)]} . [:node | '(' ,  (node at: 2) value ,  ')']}.
		
		{#RuleVariation . {} . [:node | ]}.
		{#RuleVariation . {#RulePart} . [:node | (node at: 1) value]}.
		{#RuleVariation . {#RulePart . #Min1Whitespace  . #RuleVariation} . [:node | (node at: 1) value , (node at: 3) value]}.
		
		{#Child . {[:c | c = $?] . #Number} . [:node | '(node at: ' , (node at: 2) value , ') value']}.
		
		{#ChildConcat . {#Child} . [:node | (node at: 1) value ]}.
		{#ChildConcat . {#Child . #OptWhitespace . [:c | c = $,] . #OptWhitespace . #ChildConcat} . [:node | (node at: 1) value , ' , ' , (node at: 5) value]}.
		
		{#ActionBody . {#OptWhitespace.  [:c | c = $?]  . [:c | c = $?] . #OptWhitespace . [:c | c = $=] . #OptWhitespace  . #ChildConcat} . [:node | (node at: 7) value]}.
		
		{#SemanticAction . {[:c | c = ${] . [:c | c = $|] . #ActionBody . [:c | c = $|] . [:c | c = $}]} . [:node | '[:node | ' , (node at: 3) value , ']']}.
		
	}.
	grammar startRuleName: #Grammar.
	^ grammar