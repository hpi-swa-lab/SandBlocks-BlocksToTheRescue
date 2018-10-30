as yet unclassified
testRectangleInverseRectangleCollision
	| irect rect |
	
	irect := BOInverseRectangleCollider new
		extent: 2@2;
		yourself.
	rect := BORectangleCollider new
		extent: 1@1;
		entity: BOPositionableMock new;
		yourself.
	rect entity position: 0@0.
	self assert: (irect collidedWith: rect) hasCollided not.
	self assert: (rect collidedWith: irect) hasCollided not.
	rect entity position: 2@0.
	self assert: (irect collidedWith: rect) hasCollided.
	self assert: (rect collidedWith: irect) hasCollided.