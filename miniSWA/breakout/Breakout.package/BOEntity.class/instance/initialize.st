initialize-release
initialize

	super initialize.
	self
		extent: self defaultExtent;
		position: self defaultPosition;
		collisionStrategy: (self defaultCollisionStrategyClass newFor: self).