insertion
previewIcon

	^ (Smalltalk at: #BTRIcons ifPresent: #stateMachineIcon)
		ifNil: [ToolIcons morph]