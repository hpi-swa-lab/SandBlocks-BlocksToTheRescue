accessing
contents

	^ self state transitions sorted
			collect: [:transition | BTRTransitionWrapper with: transition]