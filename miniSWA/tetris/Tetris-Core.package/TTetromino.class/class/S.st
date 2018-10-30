instance creation
S

	^ self new
		addBlocksAt: {0@1. 1@1. 1@0. 2@0} colored: Color green darker;
		rotationCenter: 1 @ 1;
		yourself