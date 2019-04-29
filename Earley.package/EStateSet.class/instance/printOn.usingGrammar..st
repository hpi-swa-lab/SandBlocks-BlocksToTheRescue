printing
printOn: aStream usingGrammar: anEGrammar

	self collection do: [:each | each printOn: aStream for: anEGrammar] separatedBy: [aStream cr]