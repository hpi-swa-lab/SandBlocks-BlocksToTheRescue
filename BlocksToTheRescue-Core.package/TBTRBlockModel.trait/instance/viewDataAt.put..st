viewData
viewDataAt: aSymbol put: anObject

 	(self viewData at: aSymbol ifAbsent: [nil]) = anObject ifFalse: 
		[self viewData at: aSymbol put: anObject.
		self changed.]	