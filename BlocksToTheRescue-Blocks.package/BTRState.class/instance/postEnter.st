running
postEnter

	^ self postStateEnterHandler ifNotNil: [:do |
		do valueWithPossibleArgs: {#postEnter. self}]