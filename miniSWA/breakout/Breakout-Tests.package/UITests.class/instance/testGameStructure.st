as yet unclassified
testGameStructure
	| gameField paddle |
	
	gameField := self firstDeepSubmorphNamed: #GameField in: self gameWindow.
	self assert: gameField = self gameField.
	paddle := self firstDeepSubmorphNamed: #Paddle in: gameField.
	self assert: (self paddleMorphs includes: paddle).