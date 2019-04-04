accessing
singleton
	UniqueInstance ifNil: [UniqueInstance := self new].
	^UniqueInstance