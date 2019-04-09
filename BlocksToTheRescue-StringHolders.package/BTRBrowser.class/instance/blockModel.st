accessing
blockModel
	
	^ self method isBTRBlockModel
		ifTrue: [self method]
		ifFalse: [self method blockModel]