as yet unclassified
deserialize: aString

	^ [Compiler new 
		evaluate: aString 
		for: self] ensure: [self resolve]