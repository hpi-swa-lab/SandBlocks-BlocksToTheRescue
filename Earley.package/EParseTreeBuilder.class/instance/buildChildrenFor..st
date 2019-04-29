as yet unclassified
buildChildrenFor: anENode

	^ (self searchChildrenFor: anENode withRulePosition: 1 from: anENode start to: anENode end) 
		collect: [:each | each isNonTerminal 
							ifTrue: [self buildFrom: each]
							ifFalse: [each]]