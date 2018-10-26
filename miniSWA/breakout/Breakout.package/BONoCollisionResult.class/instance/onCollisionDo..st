actions
onCollisionDo: aBlockClosure

	self hasCollided ifTrue: (aBlockClosure value: self).