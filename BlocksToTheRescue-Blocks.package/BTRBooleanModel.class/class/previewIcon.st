insertion
previewIcon

	^ (Smalltalk at: #BTRIcons ifPresent: #checkBoxIcon)
		ifNil: [super previewIcon]