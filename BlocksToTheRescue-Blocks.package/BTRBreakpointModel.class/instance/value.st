interface-evaluating
value

	self enabled
		ifTrue: [
			self once ifTrue: [self toggleEnabled].
			self halt].