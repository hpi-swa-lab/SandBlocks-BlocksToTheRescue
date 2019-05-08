instance creation
convertMethod: aMethod

	^ self for: (self methodBodyOf: aMethod)