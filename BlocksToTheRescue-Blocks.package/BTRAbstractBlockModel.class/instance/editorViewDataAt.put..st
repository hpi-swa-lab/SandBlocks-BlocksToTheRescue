accessing
editorViewDataAt: aSymbol put: anObject
		
	"Default to inlineViewData as the most model-view combinations probably do not want to have seperate stores for inline and editor data."
 	self inlineViewData at: aSymbol put: anObject. 
	
	"self editorViewData at: aSymbol put: anObject." 
		