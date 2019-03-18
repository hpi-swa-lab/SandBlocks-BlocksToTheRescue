constant methods
hasConstantMethodSelected

	^self hasMessageSelected and: [self method isConstantMethod]