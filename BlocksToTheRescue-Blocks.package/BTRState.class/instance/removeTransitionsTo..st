accessing
removeTransitionsTo: aSymbol

	self transitions values
		select: [:each | each targetStateName = aSymbol]
		thenDo: [:each | self removeTransition: each].