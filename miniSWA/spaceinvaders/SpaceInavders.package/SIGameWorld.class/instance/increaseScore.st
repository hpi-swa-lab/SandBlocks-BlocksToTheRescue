as yet unclassified
increaseScore

	self score: (self score + 1).
	self scoreLable contents: ('Score: ', self score asString). 