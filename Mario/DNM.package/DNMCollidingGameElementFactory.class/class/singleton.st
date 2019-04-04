instance creation
singleton 
	UniqueInstance ifNil: [UniqueInstance := self basicNew initialize].
	^UniqueInstance 