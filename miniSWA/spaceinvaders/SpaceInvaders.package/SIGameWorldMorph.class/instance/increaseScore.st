as yet unclassified
increaseScore

	self gameState score: (self gameState score + 1).
	self scoreLable contents: ('Score: ', self gameState score asString). 