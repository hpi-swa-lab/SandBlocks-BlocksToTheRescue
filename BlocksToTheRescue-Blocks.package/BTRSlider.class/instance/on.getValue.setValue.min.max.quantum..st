initialization
on: anObject getValue: getSel setValue: setSel min: min max: max quantum: quantum

	self quantum: quantum.
	min isSymbol
		ifTrue: [self getMinimumValueSelector: min]
		ifFalse: [minimumValue := min].
	max isSymbol
		ifTrue: [self getMaximumValueSelector: max]
		ifFalse: [maximumValue := max].
	self 
		on: anObject
		getValue: getSel
		setValue: setSel.