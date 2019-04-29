earley core
predictAt: i and: j symbol: anENonTerminal

	self grammar ruleCollection doWithIndex: [:each :index |
		each name = anENonTerminal symbol
			ifTrue: [self states set: i add: (EState ruleNumber: index start: i next: 1).
				(self nullableSet includes: each)
					ifTrue: [| state |
						state := self states set: i index: j.
						self states set: i add: (EState 
												ruleNumber: state ruleNumber 
												start: state start 
												next: state next + 1)]]]