as yet unclassified
playerLoosesLife

	self resetGame. 
	self gameState life positive
		ifTrue: [ ^self ]
		ifFalse: [ self ressourceManager playSound: 'Death Sound' . self abandon ].