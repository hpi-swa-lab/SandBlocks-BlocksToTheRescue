updating
update: anAspect

	Transcript showln: anAspect.
	anAspect = #transitions ifTrue: [
		self changed].