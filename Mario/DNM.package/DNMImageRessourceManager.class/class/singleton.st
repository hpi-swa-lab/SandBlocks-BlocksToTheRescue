singleton
singleton
	UniqueInstance ifNil: [self install.].
	^UniqueInstance