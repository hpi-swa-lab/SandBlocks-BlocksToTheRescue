instance creation
L

	^ self new
		addBlocksAt: {0@1. 1@1. 2@1. 0@2} colored: Color magenta;
		rotationCenter: 1 @ 1;
		yourself