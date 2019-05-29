as yet unclassified
selectorWithArgs
	
	^ self class blockSeperator,
		((self parameterFields collect: [:each | each contents asString]) joinSeparatedBy: self class blockSeperator)
	
