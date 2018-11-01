collision
collidesWithSnake: aSSnake

	^ (self ~= aSSnake and: [self head position = aSSnake head position])
		or: [self segments anySatisfy: [:each | each position = aSSnake head position]].