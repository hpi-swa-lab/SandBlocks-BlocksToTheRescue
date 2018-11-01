instance creation
J

	^ self new
		addBlocksAt: {0@1. 1@1. 2@1. 0@0} colored: Color blue;
		rotationCenter: 1 @ 1;
		yourself