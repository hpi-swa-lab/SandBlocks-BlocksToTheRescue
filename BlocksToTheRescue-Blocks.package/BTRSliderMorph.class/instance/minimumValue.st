slider
minimumValue
	
	| min |
	min := self contents truncateTo: self defaultRange.
	min <= self contents
		ifTrue: [^ min]
		ifFalse: [^ min - self defaultRange]