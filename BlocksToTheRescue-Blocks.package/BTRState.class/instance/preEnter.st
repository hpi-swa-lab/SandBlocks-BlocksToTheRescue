running
preEnter

	^ self preStateEnterHandler ifNotNil: [:do |
		do valueWithPossibleArgs: {#preEnter. self}]