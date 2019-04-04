copying
postCopy

	super postCopy.
	self wantsCopiedValue ifTrue: [
		self value: self value copy].
	^ self