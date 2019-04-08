accessing
blockMethod: aBTRBlockMethod
	
	self content ifNotNil: [self content removeDependent: self].
	blockMethod := aBTRBlockMethod.
	self content ifNotNil: [self content addDependent: self].