constant methods
isConstantMethod

	^self isShowingMethod and: [self method notNil] and: [self method isConstantMethod]