testing
shouldSwapToBlockEditor

	^ 	(self isShowingBlockEditor or: [self isShowingSerializedViewer]) not 
	and: [self hasBlockModelSelected] 
	and: [self hasUnacceptedEdits not]