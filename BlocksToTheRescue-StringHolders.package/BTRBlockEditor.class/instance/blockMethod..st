accessing
blockMethod: aBTRBlockMethod
	
	self content ifNotNil: [self content removeDependent: self].
	self blockMethod ~= aBTRBlockMethod 
		ifTrue: [self workingCopy: aBTRBlockMethod blockModel copy].
	blockMethod := aBTRBlockMethod.
	self content ifNotNil: [self content addDependent: self].