action
onCollisionDo: aBlockClosure

	self hasCollided ifTrue: [aBlockClosure value: self].