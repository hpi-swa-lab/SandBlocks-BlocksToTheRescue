drawing
drawIn: aSWorld 

	self dirty
		ifTrue: [
			aSWorld at: self position draw: self graphicalRepresentation.
			self dirty: false].
	