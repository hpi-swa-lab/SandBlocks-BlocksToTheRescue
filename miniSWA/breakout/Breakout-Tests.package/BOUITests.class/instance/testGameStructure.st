as yet unclassified
testGameStructure
	| gameField paddle |
	
	self assert: self paddleEntities size = 1.
	gameField := self firstDeepSubmorphNamed: #GameField in: self gameWindow.
	self assert: gameField = self gameField.
	paddle := self firstDeepSubmorphNamed: #Paddle in: gameField.
	self assert: (self paddleMorphs includes: paddle).