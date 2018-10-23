as yet unclassified
playerLoosesLife

	self resetGame. 
	self gameState lifes positive
		ifTrue: [ ^self ]
		ifFalse: [ self ressourceManager playSound: 'Death Sound' . self abandon ].