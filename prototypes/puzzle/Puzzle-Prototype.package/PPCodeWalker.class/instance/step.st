as yet unclassified
step
	
	self isFinished
		ifFalse: [self visit: self instructionPointer].
	