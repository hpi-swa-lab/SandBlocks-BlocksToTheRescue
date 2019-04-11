running
preLeave

	^ self preStateLeaveHandler ifNotNil: [:do |
		do valueWithPossibleArgs: {#preLeave. self}]