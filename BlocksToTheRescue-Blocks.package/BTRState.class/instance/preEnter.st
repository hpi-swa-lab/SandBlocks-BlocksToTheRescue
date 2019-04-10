running
preEnter

	^ self preStateEnterHandler ifNotNil: [:do |
		do valueWithPossibleArgs: {self. #preEnter}]