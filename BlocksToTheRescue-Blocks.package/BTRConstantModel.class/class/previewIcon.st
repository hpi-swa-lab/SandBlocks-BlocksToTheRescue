insertion
previewIcon

	^ (Smalltalk at: #BTRIcons ifPresent: #defaultMorphIcon)
		ifNil: [ToolIcons morph]