as yet unclassified
testCircleRectangleCollision
	| circ rect |
	
	circ := BOCircleCollider new
		radius: 0.5;
		yourself.
	rect := BORectangleCollider new
		extent: 1@1;
		entity: BOPositionableMock new;
		yourself.

	rect entity position: 1.5@0.
	self assert: (rect collidedWith: circ) hasCollided not.
	self assert: (circ collidedWith: rect) hasCollided not.
	rect entity position: 0.5@0.
	self assert: (rect collidedWith: circ) hasCollided.
	self assert: (circ collidedWith: rect) hasCollided.