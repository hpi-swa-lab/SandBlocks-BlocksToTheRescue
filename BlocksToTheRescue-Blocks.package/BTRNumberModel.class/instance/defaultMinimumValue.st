accessing
defaultMinimumValue
	
	| min |
	min := self value truncateTo: self defaultRange.
	^ min <= self value
		ifTrue: [min]
		ifFalse: [min - self defaultRange]