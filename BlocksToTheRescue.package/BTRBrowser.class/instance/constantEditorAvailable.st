constant methods
constantEditorAvailable

	^ self isConstantMethod or: [self couldBecomeConstantMethod]