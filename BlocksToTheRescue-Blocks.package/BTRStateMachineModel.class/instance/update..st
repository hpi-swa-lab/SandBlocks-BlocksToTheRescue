updating
update: anAspect

	Transcript showln: 'model: ', anAspect.
	anAspect = #transitions ifTrue: [
		self changed].