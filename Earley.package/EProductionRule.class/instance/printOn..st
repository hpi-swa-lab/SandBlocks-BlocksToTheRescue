printing
printOn: aStream

	aStream 
		nextPutAll: self name;
		nextPutAll: ' -> ('.
		
	self symbols do: [:each | each printOn: aStream] separatedBy: [aStream space]. 
	aStream nextPutAll: ')'.
	