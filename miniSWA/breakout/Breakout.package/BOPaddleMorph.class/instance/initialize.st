initialization
initialize

	super initialize.
	self spawningBallMorph: BOBallMorph new.
	self
		name: #Paddle;
		color: Color black;
		addMorph: self spawningBallMorph.