enumerating
doWithIndex: aBlock

	| index |
	index := 1.
	[index <= self collection size]
		whileTrue: [aBlock value: (self collection at: index) value: index. 
			index := index +1]