copying
postCopy

	self wantsCopiedValue ifTrue: [
		self value: self value copy].
	^ super postCopy