interface-evaluating
value

	self enabled ifTrue: [
		self once
			ifTrue: [self toggleOnce]
			ifFalse: [^ self].
		self halt].