earley core
completeAt: i and: j

	| item |
	item := self states set: i index: j.
	(self states set: item start)
		do: [:oldItem | | next |
			next := self nextSymbolFrom: oldItem.
			(next notNil and: [next isNonTerminal and: [next symbol = (self grammar nameTo: item)]])
				ifTrue: [self states set: i add: (EState 
												ruleNumber: oldItem ruleNumber
												start: oldItem start 
												next: oldItem next + 1)]]