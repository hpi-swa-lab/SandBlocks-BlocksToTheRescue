directed collision
collideFromRight: aBMGameObject

	| y |
	super collideFromRight: aBMGameObject.
	aBMGameObject velocity y > 0
		ifTrue: [y:= aBMGameObject velocity y * 0.5]
		ifFalse: [y := aBMGameObject velocity y].
	aBMGameObject velocity: (aBMGameObject deltaTo: self) x @ y