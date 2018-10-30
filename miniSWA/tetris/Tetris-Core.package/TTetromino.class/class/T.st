instance creation
T

	^ self new
		addBlocksAt: {0@1. 1@1. 2@1. 1@0} colored: Color magenta darker;
		rotationCenter: 1 @ 1;
		yourself