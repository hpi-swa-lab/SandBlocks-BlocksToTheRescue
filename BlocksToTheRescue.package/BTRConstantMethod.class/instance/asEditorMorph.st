accessing
asEditorMorph

	self value isColor ifTrue: 
		[^ NewColorPickerMorph
			on: self
			originalColor: self value
			setColorSelector: #value:].
	self shouldBeImplemented.