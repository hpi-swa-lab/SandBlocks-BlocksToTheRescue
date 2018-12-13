as yet unclassified
increaseInstructionPointer

	[self stack isEmpty not and: [self instructionPointer isTerminated]]
		whileTrue: [self instructionPointer: self stack pop].
	
	self instructionPointer: self instructionPointer followingConnector