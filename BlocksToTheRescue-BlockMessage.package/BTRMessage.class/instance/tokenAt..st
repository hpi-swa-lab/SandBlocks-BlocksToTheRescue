as yet unclassified
tokenAt: aNumber
	
	^ aNumber odd
		ifTrue: [(self internalSymbol subStrings: ':') at: (aNumber // 2 + 1)]
		ifFalse: [(self parameterFields at: aNumber // 2) contents asString]
	