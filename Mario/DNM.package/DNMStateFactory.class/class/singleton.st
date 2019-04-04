instance creation
singleton
	UniqueInstance ifNil: [UniqueInstance := self new].
	^UniqueInstance 