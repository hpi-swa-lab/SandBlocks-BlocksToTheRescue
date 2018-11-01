as yet unclassified
decreaseLife

	self gameState lifes: (self gameState lifes - 1).
	self lifeLable contents: ('Lifes: ', self gameState lifes asString). 