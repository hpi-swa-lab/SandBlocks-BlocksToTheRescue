updating
updateEnabledIcon

	self blockModel ifNotNil: [:model |
		self enableToggleMorph image: (model enabled
			ifTrue: [self toggleEnabledIcon]
			ifFalse: [self toggleDisabledIcon])].