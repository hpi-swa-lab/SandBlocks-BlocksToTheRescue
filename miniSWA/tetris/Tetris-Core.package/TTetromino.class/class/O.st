instance creation
O

	^ self new
		addBlocksAt: {0@0. 1@1. 0@1. 1@0} colored: Color yellow darker darker;
		rotationCenter: 0.5 @ 0.5;
		yourself