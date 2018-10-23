initialize-release
initialize

	super initialize.
	self
		extent: self defaultExtent;
		position: self defaultPosition;
		collisionHandlers: (IdentityDictionary newFrom: self defaultCollisionHandlers).