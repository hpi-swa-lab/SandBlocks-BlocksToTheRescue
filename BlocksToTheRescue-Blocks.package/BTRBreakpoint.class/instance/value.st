interface-evaluating
value

	self enabled ifTrue: [
		self once
			ifTrue: [self haltOnce]
			ifFalse: [self halt]].