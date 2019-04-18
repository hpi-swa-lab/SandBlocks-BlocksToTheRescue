as yet unclassified
contents

	^ (self state transitions
			sorted: BTRStateTransition compareBlock)
			collect: [:transition | BTRTransitionWrapper with: transition]