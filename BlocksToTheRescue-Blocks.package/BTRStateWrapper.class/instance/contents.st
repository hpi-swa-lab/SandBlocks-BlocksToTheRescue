as yet unclassified
contents

	^ (self state transitions
			sorted: [:a :b | a name <= b name])
			collect: [:transition | BTRTransitionWrapper with: transition]