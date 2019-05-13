updating
update: anAspect

	anAspect = self stateMachineModel ifTrue: [
		self changed: #text.
		self changed: #stateList].
	^ super update: anAspect