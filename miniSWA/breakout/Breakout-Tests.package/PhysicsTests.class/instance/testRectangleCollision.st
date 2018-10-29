as yet unclassified
testRectangleCollision
	| rect1 rect2 |
	
	rect1 := BORectangleCollider new
		extent: 1@1;
		yourself.
	rect2 := BORectangleCollider new
		extent: 1@1;
		entity: BOPositionableMock new;
		yourself.

	rect2 entity position: 1.0@0.
	self assert: (rect1 collidedWith: rect2) hasCollided not.
	rect2 entity position: 0.5@0.
	self assert: (rect1 collidedWith: rect2) hasCollided.