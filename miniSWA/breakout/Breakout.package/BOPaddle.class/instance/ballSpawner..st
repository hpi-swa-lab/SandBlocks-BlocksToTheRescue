accessing
ballSpawner: aPositionConsumer
	ballSpawner := aPositionConsumer.
	self changed: #showSpawningBall with: (ballSpawner notNil).