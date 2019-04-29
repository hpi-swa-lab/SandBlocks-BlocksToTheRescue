printing
printOn: aStream

	self collection do: [:each | each printOn: aStream] separatedBy: [aStream cr]