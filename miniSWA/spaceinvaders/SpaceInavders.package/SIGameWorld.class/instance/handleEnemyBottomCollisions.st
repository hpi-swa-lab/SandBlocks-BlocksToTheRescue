as yet unclassified
handleEnemyBottomCollisions
	
	self sIEnemies do: [ :enemy |
		(enemy bottom > (self bottom - self playerBottomDieTolreance)) ifTrue: [
			self resetGame. 
			self life positive
				ifTrue: [ ^self ]
				ifFalse: [ self abandon ]
			]
	].