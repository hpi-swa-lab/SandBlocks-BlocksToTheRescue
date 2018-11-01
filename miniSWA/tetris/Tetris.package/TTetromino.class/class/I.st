instance creation
I

	^ self new
		addBlocksAt: {0@1. 1@1. 2@1. 3@1} colored: Color cyan darker;
		rotationCenter: 1.5 @ 1.5;
		yourself