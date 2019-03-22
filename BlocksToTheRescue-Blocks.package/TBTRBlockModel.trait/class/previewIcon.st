as yet unclassified
previewIcon

	^ Smalltalk 
		at: #BTRIcons 
		ifPresent: [:icons | icons defaultMorphIcon] 
		ifAbsent: [ToolIcons morph]