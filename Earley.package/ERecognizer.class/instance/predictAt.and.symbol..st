earley core
predictAt: i and: j symbol: anENonTerminal

	self grammar ruleCollection doWithIndex: [:each :index |
		each name = anENonTerminal symbol
			ifTrue: [self states set: i add: (EState ruleNumber: index start: i next: 1)]]