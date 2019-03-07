accessing
asEditorMorph

	self value isColor ifTrue: 
		[^ NewColorPickerMorph
			on: self
			originalColor: self value
			setColorSelector: #value:].
	self value isMorph ifTrue: 
		[^ BTRMorphEditorMorph
			on: self
			startValue: self value
			setValueSelector: #value].
	self shouldBeImplemented.