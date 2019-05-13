accessing
incomingTransitions
	"warning - slow!"

	^ self model states gather: [:state |
		state transitions values select: [:transition |
			transition targetStateName = self name]]