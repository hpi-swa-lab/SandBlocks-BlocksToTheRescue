updating
updateOnceIcon

	self blockModel ifNotNil: [:model |
		self onceToggleMorph image: (model once
			ifTrue: [self onceEnabledIcon]
			ifFalse: [self onceDisabledIcon])].