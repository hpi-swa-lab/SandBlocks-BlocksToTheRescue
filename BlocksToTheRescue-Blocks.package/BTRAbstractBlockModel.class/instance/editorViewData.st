accessing
editorViewData
	
	"Default to inlineViewData as the most model-view combinations probably do not want to have seperate stores for inline and editor data."
	^ self inlineViewData
	
	"^ editorViewData ifNil: [editorViewData := Dictionary new]"