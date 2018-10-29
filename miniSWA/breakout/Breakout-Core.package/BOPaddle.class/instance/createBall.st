actions
createBall

	self ballEntity: (self field spawnBall
		updateFromPaddle: self;
		yourself).