initialization
initialize
	statesBySymbol := Dictionary new
		add: #marioState -> [self marioState];
		add: #fireballProjectileState -> [self fireballProjectileState];
		add: #marioGodState -> [self marioGodState];
		add: #gumbaState -> [self gumbaState];
		add: #squashedGumbaState -> [self squashedGumbaState];
		add: #turtleInsideState -> [self turtleInsideState];
		add: #turtleOutsideState -> [self turtleOutsideState];
		add: #turtleProjectileState -> [self turtleProjectileState];
		add: #catState -> [self catState];
		yourself.