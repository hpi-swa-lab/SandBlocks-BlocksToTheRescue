as yet unclassified
testInverseRectangleCollision
	| irect1 irect2 |
	
	irect1 := BOInverseRectangleCollider new
		extent: 1@1;
		yourself.
	irect2 := BOInverseRectangleCollider new
		extent: 1@1;
		entity: BOPositionableMock new;
		yourself.
	irect2 entity position: 0@0.
	self assert: (irect1 collidedWith: irect2) hasCollided.
	self assert: (irect2 collidedWith: irect1) hasCollided.
	irect2 entity position: 1.5@0.
	self assert: (irect1 collidedWith: irect2) hasCollided.
	self assert: (irect2 collidedWith: irect1) hasCollided.