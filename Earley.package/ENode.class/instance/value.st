evaluating
value

	^ self isTerminal
		ifTrue: [value asString]
		ifFalse: [self rule semanticAction value: self]