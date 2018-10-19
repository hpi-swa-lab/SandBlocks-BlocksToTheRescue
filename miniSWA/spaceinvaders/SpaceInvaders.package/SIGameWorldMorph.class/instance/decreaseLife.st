as yet unclassified
decreaseLife

	self gameState life: (self gameState life - 1).
	self lifeLable contents: ('Lifes: ', self gameState life asString). 