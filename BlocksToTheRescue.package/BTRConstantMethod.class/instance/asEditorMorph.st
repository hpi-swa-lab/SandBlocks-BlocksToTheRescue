as yet unclassified
asEditorMorph

	self value isColor ifTrue: 
		[^ NewColorPickerMorph
			on: nil
			originalColor: self value
			setColorSelector: nil].
	self value isMorph ifTrue: 
		[^ BTRMorphEditorMorph
			on: self
			startValue: self value
			setValueSelector: #value].
	self shouldBeImplemented.