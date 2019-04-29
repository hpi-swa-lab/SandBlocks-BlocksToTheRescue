earley core
scanAt: i and: j symbol: anETerminal

	| item |
	item := self states set: i index: j.
	(anETerminal matchesAt: i of: self source)
		ifTrue: [self states set: i + 1 add: (EState 
												ruleNumber: item ruleNumber 
												start: item start 
												next: item next + 1)]