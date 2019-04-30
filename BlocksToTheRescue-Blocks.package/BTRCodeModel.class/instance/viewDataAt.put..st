accessing
viewDataAt: aSymbol put: anObject

	self viewData at: aSymbol put: anObject.
	self changed.