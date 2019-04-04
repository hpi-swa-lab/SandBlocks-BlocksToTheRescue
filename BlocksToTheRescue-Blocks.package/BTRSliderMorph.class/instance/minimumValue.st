slider
minimumValue
	
	| min |
	min := self contents truncateTo: 100.
	min <= self contents
		ifTrue: [^ min]
		ifFalse: [^ min - 100]