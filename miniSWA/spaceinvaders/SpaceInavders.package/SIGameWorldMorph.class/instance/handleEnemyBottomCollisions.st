as yet unclassified
handleEnemyBottomCollisions
	
	self sIEnemies do: [ :enemy |
		(enemy bottom > (self bottom - self gameState playerBottomDieTolreance)) ifTrue: [
			self resetGame. 
			self gameState life positive
				ifTrue: [ ^self ]
				ifFalse: [ self ressourceManager playSound: 'Death Sound' . self abandon ]
			]
	].