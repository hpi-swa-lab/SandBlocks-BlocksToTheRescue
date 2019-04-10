running
preLeave

	^ self preStateLeaveHandler ifNotNil: [:do |
		do valueWithPossibleArgs: {self. #preLeave}]