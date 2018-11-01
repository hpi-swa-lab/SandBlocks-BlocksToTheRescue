instance creation
L

	^ self new
		addBlocksAt: {0@1. 1@1. 2@1. 2@0} colored: Color orange;
		rotationCenter: 1 @ 1;
		yourself