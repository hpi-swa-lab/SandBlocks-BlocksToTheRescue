instance creation
singleton
	UniqueInstance ifNil: [self install].
	^UniqueInstance