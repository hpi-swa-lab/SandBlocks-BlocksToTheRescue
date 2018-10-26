constants
defaultCollisionHandlers

self flag: #refactor.
	^ {BOBall -> [:ball | self flag: #todo "implement bottom side check"]}