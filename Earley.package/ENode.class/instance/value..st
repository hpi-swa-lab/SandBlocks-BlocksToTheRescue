evaluating
value: context

	^ self isTerminal
		ifTrue: [value asString]
		ifFalse: [self rule semanticAction value: self value: context]