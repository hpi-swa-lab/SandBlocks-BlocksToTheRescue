caching
releaseCachedState

	super releaseCachedState.
	self image ifNotNil: [self image hibernate].