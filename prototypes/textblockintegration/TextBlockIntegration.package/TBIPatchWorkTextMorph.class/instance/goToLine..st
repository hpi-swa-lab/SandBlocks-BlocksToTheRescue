as yet unclassified
goToLine: aNumber

	((1 to: self lines size) rangeIncludes: aNumber)
		ifTrue: [self currentLineNumber: aNumber]