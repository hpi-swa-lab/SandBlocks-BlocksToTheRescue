insertion
previewIcon

	^ (Smalltalk at: #BTRIcons ifPresent: [:icons | icons greetingMorphIcon])
		ifNil: [super previewIcon]