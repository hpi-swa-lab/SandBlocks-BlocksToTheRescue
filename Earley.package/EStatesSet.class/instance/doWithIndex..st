enumerating
doWithIndex: aBlock
	
	| index |
	index := 1.
	[index <= self states size]
		whileTrue: [aBlock value: (self states at: index) value: index. 
			index := index +1]