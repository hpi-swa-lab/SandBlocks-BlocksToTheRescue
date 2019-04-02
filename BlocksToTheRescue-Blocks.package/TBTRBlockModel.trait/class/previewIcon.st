insertion
previewIcon

	^ (Smalltalk 
		at: #BTRIcons 
		ifPresent: [:icons | icons defaultMorphIcon]) ifNil: [ToolIcons morph]