as yet unclassified
testCircleInverseRectangleCollision
	| irect circ |
	
	irect := BOInverseRectangleCollider new
		extent: 2@2;
		yourself.
	circ := BOCircleCollider new
		radius: 0.5;
		entity: BOPositionableMock new;
		yourself.
	circ entity position: 0@0.
	self assert: (irect collidedWith: circ) hasCollided not.
	self assert: (circ collidedWith: irect) hasCollided not.
	circ entity position: 2@0.
	self assert: (irect collidedWith: circ) hasCollided.
	self assert: (circ collidedWith: irect) hasCollided.