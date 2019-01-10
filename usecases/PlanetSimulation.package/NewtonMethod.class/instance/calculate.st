as yet unclassified
calculate

	| newValue |
	newValue := self formula value: self currentValue.
	^ (newValue - self currentValue) abs <= self accuracy 
		ifTrue: [newValue]
		ifFalse: [self currentValue: newValue. self calculate]