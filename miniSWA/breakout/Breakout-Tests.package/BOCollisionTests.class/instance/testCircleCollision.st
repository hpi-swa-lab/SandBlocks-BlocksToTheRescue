as yet unclassified
testCircleCollision
	| circ1 circ2 |
	
	circ1 := BOCircleCollider new
		radius: 0.5;
		yourself.
	circ2 := BOCircleCollider new
		radius: 0.5;
		entity: BOPositionableMock new;
		yourself.

	circ2 entity position: 1.5@0.
	self assert: (circ1 collidedWith: circ2) hasCollided not.
	self assert: (circ2 collidedWith: circ1) hasCollided not.
	circ2 entity position: 0.5@0.
	self assert: (circ1 collidedWith: circ2) hasCollided.
	self assert: (circ2 collidedWith: circ1) hasCollided.