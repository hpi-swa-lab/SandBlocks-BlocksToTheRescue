as yet unclassified
searchChildrenFor: anENode withRulePosition: aNumber from: startNumber to: endNumber
	
	| position result rule rulePosition |
	position := startNumber.
	result := OrderedCollection new.
	rulePosition := aNumber.
	rule := self grammar ruleCollection at: anENode ruleNumber.
	
	[rulePosition <= rule size]
		whileTrue: [| symbol | 
			symbol := rule at: rulePosition.
			
			symbol isTerminal
				ifTrue: [(symbol matchesAt: position of: self source)
						ifTrue: [
								result
									add: (ENode
										name: (self source at: position)
										start: position
										end: position
										ruleNumber: -1
										type: #terminal
										grammar: self grammar).
							position := position + 1]
						ifFalse: [^ result]]
				ifFalse: [symbol isNonTerminal
						ifTrue: [(self nodesList at: position)
								do: [:each | ((each name = symbol symbol) and: [each end <= endNumber])
										ifTrue: [each type: #nonTerminal.
											(rulePosition = rule size and: [each end = endNumber])
												ifTrue: [result add: each]
												ifFalse: [| possibleResult |
													possibleResult := self 
																		searchChildrenFor: anENode 
																		withRulePosition: rulePosition + 1 
																		from: each end + 1 
																		to: endNumber.
													(possibleResult notEmpty and: [possibleResult last end = anENode end])
														ifTrue: [result add: each.
																possibleResult
																	do: [:res | result add: res].
																position := result last end + 1]]]]]
						ifFalse: [self error]].
					rulePosition := rulePosition + 1].
	^ result