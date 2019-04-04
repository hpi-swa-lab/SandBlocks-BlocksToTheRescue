accessing
collisionWith: aCollidingGameElement
	"change direction if path is blocked by an object it does not want to attack"
	(self representedObject wantsToAttack: aCollidingGameElement) ifFalse:
		[(aCollidingGameElement isBelow: (self representedObject)) ifFalse:
			[(aCollidingGameElement isRightOf: (self representedObject)) 
				ifTrue: [self direction: #left].
			(aCollidingGameElement isLeftOf: (self representedObject)) 
				ifTrue: [self direction: #right]]].