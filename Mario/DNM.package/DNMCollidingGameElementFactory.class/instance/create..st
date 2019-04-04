instance-creation
create: aCollidingGameElementType
	^(gameElementsBySymbol 
		at: aCollidingGameElementType 
		ifAbsent: [[self error: 'Requested GameElement does not exist!']]) value