instance creation
Z

	^ self new
		addBlocksAt: {0@0. 1@0. 1@1. 2@1} colored: Color red darker;
		rotationCenter: 1 @ 1;
		yourself